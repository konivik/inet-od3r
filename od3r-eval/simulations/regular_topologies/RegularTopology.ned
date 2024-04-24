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

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;

import inet.node.inet.Router;
import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;
import inet.common.scenario.FailureGenerator;

//import ned.DatarateChannel;

//
// TODO Auto-generated network
//
network RegularTopology
{
//    types:
//        channel Channel extends DatarateChannel
//        {
//            datarate = 1Gbps;
//            delay = 0.3ms;
//        }
    submodules:
        configurator: Ipv4NetworkConfigurator
        {
            @display("p=30,40");
        }
//        visualizer: IntegratedCanvasVisualizer {
//            @display("p=130,40");
//        }
        failureGenerator: FailureGenerator {
        	@display("p=80,130;is=s");
        }
}
