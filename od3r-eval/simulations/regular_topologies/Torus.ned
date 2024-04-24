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

import ned.DatarateChannel;

//
// Parametric square topology
// neighbors are connected in a grid. Also the edge nodes are connected with each other
//
//
network Torus extends RegularTopology
{
    parameters:
        int columns = default(8);
        int rows = default(5);
    types:
        channel Channel extends DatarateChannel
        {
            datarate = 1Gbps;
            delay = 0.3ms;
        }
    submodules:
        router[columns*rows]: Router {
            @display("p=,,matrix,$columns");
            gates: pppg[4];
        }
    connections:
        for i=0..rows-1, for j=0..columns-1 {
            router[i*columns+j].pppg[1] <--> Channel <--> router[((i+1)%rows)*columns+j].pppg[0];
            router[i*columns+j].pppg[3] <--> Channel <--> router[i*columns+(j+1)%columns].pppg[2];
        }
}
