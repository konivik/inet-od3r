// Converted BT North America Graph from Topology Zoo Toolset
// Data Obtained: 16/11/10
// Version: 1.0
// Geo Location: North America
// Geo Extent: Continent
// Provenance: Primary
// Note: None
// Source: http://www.bt.net/info/north_america.shtml
// Type: COM
// DateType: Current
// Backbone: 1, Commercial: 0
// label: BtNorthAmerica
// ToolsetVersion: 0.3.34dev-20120328
// Customer: 1, IX: 0
// SourceGitVersion: e278b1b
// LastAccess: 3/08/10
// LastProcessed: 2011_09_01
// Testbed: 1

// Nodes: 35, Edges: 74, Connectivity: 2
// AVG SSP length: 2.6957983193277313, Max SSP length: 6
// Original Nodes: 36, Edges: 76, Connectivity: 2
// OG AVG SSP length: 2.7222222222222223, Max SSP length: 6
// External Nodes removed: 1, One connected Nodes removed: 0

package od3r_eval.simulations.realworld_topologies;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
// import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;
import inet.common.scenario.FailureGenerator;
import ned.DatarateChannel;
import inet.node.inet.Router;

network BTNorthAmerica
{
    parameters:
        double channelDatarate @mutable @unit(Mbps) = default(10Gbps);
        bool useDistanceForDelay = default(false);

    types:
        channel Channel extends DatarateChannel
        {
                // double distance @unit(m);
                datarate = parent.channelDatarate;
                delay = 0.3ms;
                // delay = parent.useDistanceForDelay  ?this.distance / 299792km * 1s + 0.1us : 0.3ms;
                // delay = this.distance / 200000km * 1s;
        }

    submodules:
        configurator: Ipv4NetworkConfigurator
        {
                @display("p=30,40");
        }

        //visualizer: IntegratedCanvasVisualizer
        //{
        //        @display("p=30,40");
        //}

        failureGenerator: FailureGenerator
        {
                @display("p=80,100;is=s");
        }

        router[35]: Router;

        // router[0] : Router { // node0
        // Label: Cheyenne
        // Internal: 1
        // Country: United States
        // }

        // router[1] : Router { // node1
        // Label: Salt Lake
        // Internal: 1
        // Country: United States
        // }

        // router[2] : Router { // node2
        // Label: Denver
        // Internal: 1
        // Country: United States
        // }

        // router[3] : Router { // node3
        // Label: ?
        // Internal: 1
        // Country: 
        // }

        // router[4] : Router { // node4
        // Label: Portland
        // Internal: 1
        // Country: United States
        // }

        // router[5] : Router { // node5
        // Label: Eugene
        // Internal: 1
        // Country: United States
        // }

        // router[6] : Router { // node6
        // Label: Spokane
        // Internal: 1
        // Country: United States
        // }

        // router[7] : Router { // node7
        // Label: Seattle
        // Internal: 1
        // Country: United States
        // }

        // router[8] : Router { // node8
        // Label: Burbank
        // Internal: 1
        // Country: United States
        // }

        // router[9] : Router { // node9
        // Label: Los Angeles
        // Internal: 1
        // Country: United States
        // }

        // router[10] : Router { // node10
        // Label: Newark
        // Internal: 1
        // Country: United States
        // }

        // router[11] : Router { // node11
        // Label: New York
        // Internal: 1
        // Country: United States
        // }

        // router[12] : Router { // node12
        // Label: Boston
        // Internal: 1
        // Country: United States
        // }

        // router[13] : Router { // node13
        // Label: Eckington
        // Internal: 1
        // Country: United States
        // }

        // router[14] : Router { // node15
        // Label: Tukwita
        // Internal: 1
        // Country: United States
        // }

        // router[15] : Router { // node16
        // Label: Washington
        // Internal: 1
        // Country: United States
        // }

        // router[16] : Router { // node17
        // Label: Chicago
        // Internal: 1
        // Country: United States
        // }

        // router[17] : Router { // node18
        // Label: Dallas
        // Internal: 1
        // Country: United States
        // }

        // router[18] : Router { // node19
        // Label: Albuquerque
        // Internal: 1
        // Country: United States
        // }

        // router[19] : Router { // node20
        // Label: Tucson
        // Internal: 1
        // Country: United States
        // }

        // router[20] : Router { // node21
        // Label: Phoenix
        // Internal: 1
        // Country: United States
        // }

        // router[21] : Router { // node22
        // Label: Cermak
        // Internal: 1
        // Country: United States
        // }

        // router[22] : Router { // node23
        // Label: Atlanta
        // Internal: 1
        // Country: United States
        // }

        // router[23] : Router { // node24
        // Label: Tampa
        // Internal: 1
        // Country: United States
        // }

        // router[24] : Router { // node25
        // Label: Houston
        // Internal: 1
        // Country: United States
        // }

        // router[25] : Router { // node26
        // Label: ?
        // Internal: 1
        // Country: 
        // }

        // router[26] : Router { // node27
        // Label: Kansas
        // Internal: 1
        // Country: United States
        // }

        // router[27] : Router { // node28
        // Label: Sunnyvale
        // Internal: 1
        // Country: United States
        // }

        // router[28] : Router { // node29
        // Label: Boise
        // Internal: 1
        // Country: United States
        // }

        // router[29] : Router { // node30
        // Label: Helena
        // Internal: 1
        // Country: United States
        // }

        // router[30] : Router { // node31
        // Label: Billings
        // Internal: 1
        // Country: United States
        // }

        // router[31] : Router { // node32
        // Label: Fargo
        // Internal: 1
        // Country: United States
        // }

        // router[32] : Router { // node33
        // Label: Minneapolis
        // Internal: 1
        // Country: United States
        // }

        // router[33] : Router { // node34
        // Label: Sioux City
        // Internal: 1
        // Country: United States
        // }

        // router[34] : Router { // node35
        // Label: Omaha
        // Internal: 1
        // Country: United States
        // }

    connections:
        router[0].pppg++ <--> Channel <--> router[1].pppg++;
        router[0].pppg++ <--> Channel <--> router[2].pppg++;
        router[1].pppg++ <--> Channel <--> router[2].pppg++;
        router[1].pppg++ <--> Channel <--> router[6].pppg++;
        router[1].pppg++ <--> Channel <--> router[8].pppg++;
        router[1].pppg++ <--> Channel <--> router[21].pppg++;
        router[1].pppg++ <--> Channel <--> router[27].pppg++;
        router[1].pppg++ <--> Channel <--> router[28].pppg++;
        router[1].pppg++ <--> Channel <--> router[30].pppg++;
        router[2].pppg++ <--> Channel <--> router[3].pppg++;
        router[2].pppg++ <--> Channel <--> router[18].pppg++;
        router[2].pppg++ <--> Channel <--> router[20].pppg++;
        router[2].pppg++ <--> Channel <--> router[26].pppg++;
        router[2].pppg++ <--> Channel <--> router[27].pppg++;
        router[3].pppg++ <--> Channel <--> router[26].pppg++;
        router[4].pppg++ <--> Channel <--> router[8].pppg++;
        router[4].pppg++ <--> Channel <--> router[5].pppg++;
        router[4].pppg++ <--> Channel <--> router[14].pppg++;
        router[5].pppg++ <--> Channel <--> router[14].pppg++;
        router[6].pppg++ <--> Channel <--> router[7].pppg++;
        router[7].pppg++ <--> Channel <--> router[16].pppg++;
        router[7].pppg++ <--> Channel <--> router[14].pppg++;
        router[7].pppg++ <--> Channel <--> router[29].pppg++;
        router[7].pppg++ <--> Channel <--> router[20].pppg++;
        router[8].pppg++ <--> Channel <--> router[9].pppg++;
        router[8].pppg++ <--> Channel <--> router[20].pppg++;
        router[8].pppg++ <--> Channel <--> router[24].pppg++;
        router[8].pppg++ <--> Channel <--> router[27].pppg++;
        router[9].pppg++ <--> Channel <--> router[24].pppg++;
        router[9].pppg++ <--> Channel <--> router[27].pppg++;
        router[10].pppg++ <--> Channel <--> router[11].pppg++;
        router[10].pppg++ <--> Channel <--> router[12].pppg++;
        router[10].pppg++ <--> Channel <--> router[13].pppg++;
        router[10].pppg++ <--> Channel <--> router[16].pppg++;
        router[10].pppg++ <--> Channel <--> router[24].pppg++;
        router[10].pppg++ <--> Channel <--> router[26].pppg++;
        router[11].pppg++ <--> Channel <--> router[15].pppg++;
        router[11].pppg++ <--> Channel <--> router[16].pppg++;
        router[11].pppg++ <--> Channel <--> router[12].pppg++;
        router[11].pppg++ <--> Channel <--> router[13].pppg++;
        router[13].pppg++ <--> Channel <--> router[15].pppg++;
        router[13].pppg++ <--> Channel <--> router[21].pppg++;
        router[13].pppg++ <--> Channel <--> router[22].pppg++;
        router[13].pppg++ <--> Channel <--> router[23].pppg++;
        router[13].pppg++ <--> Channel <--> router[24].pppg++;
        router[13].pppg++ <--> Channel <--> router[26].pppg++;
        router[13].pppg++ <--> Channel <--> router[27].pppg++;
        router[14].pppg++ <--> Channel <--> router[27].pppg++;
        router[14].pppg++ <--> Channel <--> router[28].pppg++;
        router[15].pppg++ <--> Channel <--> router[16].pppg++;
        router[15].pppg++ <--> Channel <--> router[22].pppg++;
        router[16].pppg++ <--> Channel <--> router[21].pppg++;
        router[16].pppg++ <--> Channel <--> router[26].pppg++;
        router[16].pppg++ <--> Channel <--> router[27].pppg++;
        router[17].pppg++ <--> Channel <--> router[24].pppg++;
        router[17].pppg++ <--> Channel <--> router[26].pppg++;
        router[17].pppg++ <--> Channel <--> router[19].pppg++;
        router[18].pppg++ <--> Channel <--> router[19].pppg++;
        router[19].pppg++ <--> Channel <--> router[20].pppg++;
        router[21].pppg++ <--> Channel <--> router[32].pppg++;
        router[21].pppg++ <--> Channel <--> router[22].pppg++;
        router[21].pppg++ <--> Channel <--> router[26].pppg++;
        router[22].pppg++ <--> Channel <--> router[23].pppg++;
        router[22].pppg++ <--> Channel <--> router[24].pppg++;
        router[23].pppg++ <--> Channel <--> router[24].pppg++;
        router[24].pppg++ <--> Channel <--> router[27].pppg++;
        router[25].pppg++ <--> Channel <--> router[34].pppg++;
        router[25].pppg++ <--> Channel <--> router[26].pppg++;
        router[26].pppg++ <--> Channel <--> router[32].pppg++;
        router[26].pppg++ <--> Channel <--> router[34].pppg++;
        router[29].pppg++ <--> Channel <--> router[30].pppg++;
        router[31].pppg++ <--> Channel <--> router[32].pppg++;
        router[31].pppg++ <--> Channel <--> router[33].pppg++;
        router[33].pppg++ <--> Channel <--> router[34].pppg++;
}
