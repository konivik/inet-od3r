// Converted Abilene Graph from Topology Zoo Toolset
// Data Obtained: 3/02/11
// Version: 1.0
// Geo Location: US
// Geo Extent: Country
// Provenance: Primary
// Note: None
// Source: http://www.internet2.edu/pubs/200502-IS-AN.pdf
// Type: REN
// DateType: Historic
// Backbone: 1, Commercial: 0
// label: Abilene
// ToolsetVersion: 0.3.34dev-20120328
// Customer: 0, IX: 0
// SourceGitVersion: e278b1b
// LastAccess: 3/02/11
// LastProcessed: 2011_09_01
// Testbed: 0

// Nodes: 11, Edges: 14, Connectivity: 2
// AVG SSP length: 2.418181818181818, Max SSP length: 5
// Original Nodes: 11, Edges: 14, Connectivity: 2
// OG AVG SSP length: 2.418181818181818, Max SSP length: 5
// External Nodes removed: 0, One connected Nodes removed: 0

package od3r_eval.simulations.realworld_topologies;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
// import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;
import inet.common.scenario.FailureGenerator;
import ned.DatarateChannel;
import inet.node.inet.Router;

network Abilene
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

        router[11]: Router;

        // router[0] : Router { // node0
        // Label: New York
        // Internal: 1
        // Country: United States
        // }

        // router[1] : Router { // node1
        // Label: Chicago
        // Internal: 1
        // Country: United States
        // }

        // router[2] : Router { // node2
        // Label: Washington DC
        // Internal: 1
        // Country: United States
        // }

        // router[3] : Router { // node3
        // Label: Seattle
        // Internal: 1
        // Country: United States
        // }

        // router[4] : Router { // node4
        // Label: Sunnyvale
        // Internal: 1
        // Country: United States
        // }

        // router[5] : Router { // node5
        // Label: Los Angeles
        // Internal: 1
        // Country: United States
        // }

        // router[6] : Router { // node6
        // Label: Denver
        // Internal: 1
        // Country: United States
        // }

        // router[7] : Router { // node7
        // Label: Kansas City
        // Internal: 1
        // Country: United States
        // }

        // router[8] : Router { // node8
        // Label: Houston
        // Internal: 1
        // Country: United States
        // }

        // router[9] : Router { // node9
        // Label: Atlanta
        // Internal: 1
        // Country: United States
        // }

        // router[10] : Router { // node10
        // Label: Indianapolis
        // Internal: 1
        // Country: United States
        // }

    connections:
        router[0].pppg++ <--> Channel <--> router[1].pppg++;
        router[0].pppg++ <--> Channel <--> router[2].pppg++;
        router[1].pppg++ <--> Channel <--> router[10].pppg++;
        router[2].pppg++ <--> Channel <--> router[9].pppg++;
        router[3].pppg++ <--> Channel <--> router[4].pppg++;
        router[3].pppg++ <--> Channel <--> router[6].pppg++;
        router[4].pppg++ <--> Channel <--> router[5].pppg++;
        router[4].pppg++ <--> Channel <--> router[6].pppg++;
        router[5].pppg++ <--> Channel <--> router[8].pppg++;
        router[6].pppg++ <--> Channel <--> router[7].pppg++;
        router[7].pppg++ <--> Channel <--> router[8].pppg++;
        router[7].pppg++ <--> Channel <--> router[10].pppg++;
        router[8].pppg++ <--> Channel <--> router[9].pppg++;
        router[9].pppg++ <--> Channel <--> router[10].pppg++;
}
