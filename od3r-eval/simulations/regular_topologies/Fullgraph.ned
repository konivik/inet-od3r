//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package od3r_eval.simulations.regular_topologies;

import inet.node.inet.Router;
import od3r_eval.simulations.regular_topologies.RegularTopology;
//import inet.examples.od3r.RegularTopologies.RegularTopology.Channel;

import ned.DatarateChannel;

//
// Parametric fullgraph topology
// all nodes are connected with each other, i.e. n=6 would result in this: (note, that the visualisation will be different in th
// editior. No single central node will be there
//     o---o
//    /|\ /|\
//   o-+-o-+-o
//    \|/ \|/
//     o---o
//
network Fullgraph extends RegularTopology
{
    parameters:
        int n = default(8);
        types:
    channel Channel extends DatarateChannel
        {
            datarate = 1Gbps;
            delay = 0.3ms;
        }
    submodules:
        router[n]: Router {
            @display("p=,,ring");
            gates: pppg[parent.n-1];
        }
    connections:
        for i=0..n-2, for j=i+0..n-2 {
            router[i].pppg[j] <--> Channel <--> router[j+1].pppg[i];
        }
}
