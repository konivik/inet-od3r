# Increasing Network Resilience Through Dynamic Routing with Disjoint Paths
This repository includes a implementation of OD3R for the INET framework of OMNeT++ as presented in the paper _Increasing Network Resilience Through Dynamic Routing with Disjoint Paths_ at _IFIP Networking 2024_.
In addition, this repository also includes the topology files as well as the configuration files to reproduce the results presented in the paper.

## Citation
If you find this code useful, please cite our paper:
```
@INPROCEEDINGS{altenhofen2024od3r,
	title={{Increasing Network Resilience Through Dynamic Routing with Disjoint Paths}},
	author={Konrad Altenhofen and Julian Zobel and Bj{\"o}rn Scheuermann},
	booktitle={{International Federation for Information Processing (IFIP) Networking 2024
	Conference (IFIP Networking 2024)}},
	address={{Thessaloniki, Greece}},
	pages={9},
	year={2024}
}
```

## License
The provided code is available under the [GNU General Public License v3](https://www.gnu.org/licenses/gpl-3.0).

## Sources
### Simulation Files
The configuration files and the topologies used for evaluation can be found int the folder `od3r-eval`.

### OD3R OMNeT++ INET Patch
This patch adds OD3R to INET version 4.4.1 for OMNeT Version 6.0.1.

#### Adding OD3R to the OMNeT++ INET Framework
1. Clone the INET repository using ``git clone https://github.com/inet-framework/inet.git``
2. Checkout Version 4.4.1 using ``git checkout v4.4.1``
3. Download the patch file
4. Go into the repository folder using ``cd inet``
5. Apply the patch to the INET folder ``patch -p1 < ../od3r.patch``
6. You can now add the INET framework to OMNeT++ the same way as with an unmodified framework.

