// Converted BT Europe Graph from Topology Zoo Toolset
// Data Obtained: 16/11/10
// Version: 1.0
// Geo Location: Europe
// Geo Extent: Continent
// Provenance: Primary
// Note: None
// Source: http://www.bt.net/info/europe.shtml
// Type: COM
// DateType: Current
// Backbone: 1, Commercial: 0
// label: BtEurope
// ToolsetVersion: 0.3.34dev-20120328
// Customer: 1, IX: 0
// SourceGitVersion: e278b1b
// LastAccess: 3/08/10
// LastProcessed: 2011_09_01
// Testbed: 1

// Nodes: 17, Edges: 30, Connectivity: 2
// AVG SSP length: 1.963235294117647, Max SSP length: 3
// Original Nodes: 24, Edges: 37, Connectivity: 1
// OG AVG SSP length: 2.3152173913043477, Max SSP length: 4
// External Nodes removed: 2, One connected Nodes removed: 5

package od3r_eval.simulations.realworld_topologies;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
// import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;
import inet.common.scenario.FailureGenerator;
import ned.DatarateChannel;
import inet.node.inet.Router;

network BTEurope
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

        router[17]: Router;

        // router[0] : Router { // node0
        // Label: Budapest
        // Internal: 1
        // Country: Hungary
        // }

        // router[1] : Router { // node1
        // Label: Munich
        // Internal: 1
        // Country: Germany
        // }

        // router[2] : Router { // node2
        // Label: Prague
        // Internal: 1
        // Country: Czech Republic
        // }

        // router[3] : Router { // node3
        // Label: Vienna
        // Internal: 1
        // Country: Austria
        // }

        // router[4] : Router { // node4
        // Label: Dusseldorf
        // Internal: 1
        // Country: Germany
        // }

        // router[5] : Router { // node5
        // Label: Frankfurt
        // Internal: 1
        // Country: Germany
        // }

        // router[6] : Router { // node6
        // Label: Zurich
        // Internal: 1
        // Country: Switzerland
        // }

        // router[7] : Router { // node7
        // Label: Paris
        // Internal: 1
        // Country: France
        // }

        // router[8] : Router { // node8
        // Label: Milan
        // Internal: 1
        // Country: Italy
        // }

        // router[9] : Router { // node9
        // Label: Barcelona
        // Internal: 1
        // Country: Spain
        // }

        // router[10] : Router { // node13
        // Label: Madrid
        // Internal: 1
        // Country: Spain
        // }

        // router[11] : Router { // node16
        // Label: London
        // Internal: 1
        // Country: United Kingdom
        // }

        // router[12] : Router { // node17
        // Label: London
        // Internal: 1
        // Country: United Kingdom
        // }

        // router[13] : Router { // node19
        // Label: Dublin
        // Internal: 1
        // Country: Ireland
        // }

        // router[14] : Router { // node21
        // Label: Amsterdam
        // Internal: 1
        // Country: Netherlands
        // }

        // router[15] : Router { // node22
        // Label: Gothenburg
        // Internal: 1
        // Country: Sweden
        // }

        // router[16] : Router { // node23
        // Label: Stockholm
        // Internal: 1
        // Country: Sweden
        // }

    connections:
        router[0].pppg++ <--> Channel <--> router[12].pppg++;
        router[0].pppg++ <--> Channel <--> router[5].pppg++;
        router[1].pppg++ <--> Channel <--> router[4].pppg++;
        router[1].pppg++ <--> Channel <--> router[5].pppg++;
        router[2].pppg++ <--> Channel <--> router[11].pppg++;
        router[2].pppg++ <--> Channel <--> router[5].pppg++;
        router[3].pppg++ <--> Channel <--> router[5].pppg++;
        router[3].pppg++ <--> Channel <--> router[14].pppg++;
        router[4].pppg++ <--> Channel <--> router[5].pppg++;
        router[4].pppg++ <--> Channel <--> router[14].pppg++;
        router[5].pppg++ <--> Channel <--> router[6].pppg++;
        router[5].pppg++ <--> Channel <--> router[8].pppg++;
        router[5].pppg++ <--> Channel <--> router[12].pppg++;
        router[5].pppg++ <--> Channel <--> router[14].pppg++;
        router[6].pppg++ <--> Channel <--> router[12].pppg++;
        router[7].pppg++ <--> Channel <--> router[12].pppg++;
        router[7].pppg++ <--> Channel <--> router[14].pppg++;
        router[8].pppg++ <--> Channel <--> router[12].pppg++;
        router[9].pppg++ <--> Channel <--> router[10].pppg++;
        router[9].pppg++ <--> Channel <--> router[14].pppg++;
        router[10].pppg++ <--> Channel <--> router[12].pppg++;
        router[11].pppg++ <--> Channel <--> router[12].pppg++;
        router[11].pppg++ <--> Channel <--> router[14].pppg++;
        router[11].pppg++ <--> Channel <--> router[16].pppg++;
        router[12].pppg++ <--> Channel <--> router[13].pppg++;
        router[12].pppg++ <--> Channel <--> router[14].pppg++;
        router[13].pppg++ <--> Channel <--> router[14].pppg++;
        router[14].pppg++ <--> Channel <--> router[15].pppg++;
        router[14].pppg++ <--> Channel <--> router[16].pppg++;
        router[15].pppg++ <--> Channel <--> router[16].pppg++;
}
