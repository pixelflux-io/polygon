import { Contract, BrowserProvider } from 'ethers';
import { Stage } from './interfaces';
import contractConfig from '../../config/contracts.json';
import Pixelflux1JSON from '../../../build/contracts/Pixelflux1.json';

export async function getConnectedPolygonAccounts(): Promise<string[]> {
  if (typeof window.ethereum !== 'undefined' && window.ethereum.isConnected()) {
    return await window.ethereum.request({ method: 'eth_accounts' });
  }
  return [];
}

async function getTotalValueForContract(address: string, abi: any, provider: BrowserProvider): Promise<number> {
  const contract = new Contract(address, abi, provider);
  return await contract.calculateTotalValue();
}

type StagesResult = {
  stages: Stage[];
  totalValues: number[];
};


export async function getStagesFromContracts(): Promise<StagesResult> {
  const provider: BrowserProvider = new BrowserProvider(window.ethereum);
  const { Pixelflux1, Pixelflux2, Pixelflux3 } = contractConfig.polygon;
  const contractABI = Pixelflux1JSON.abi;
  
  const stages = [];
  const contractAddresses = [Pixelflux1, Pixelflux2, Pixelflux3];
  const totalValues = [];

  for (const address of contractAddresses) {
    const contract = new Contract(address, contractABI, provider);
    
    const isEnabled = await contract.isContractEnabled();
    const stageData = {
      isEnabled: isEnabled,
      cells: isEnabled ? await contract.getAllCellStates() : []
    };
    
    const totalValue = await getTotalValueForContract(address, contractABI, provider);
    totalValues.push(totalValue);

    stages.push(stageData);
  }

  return {
    stages: stages,
    totalValues: totalValues
  };
}