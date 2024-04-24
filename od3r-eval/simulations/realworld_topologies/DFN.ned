// Converted DFN Graph from Topology Zoo Toolset
// Data Obtained: 2/01/11
// Version: 1.0
// Geo Location: Germany
// Geo Extent: Country
// Provenance: Primary
// Note: Don't know how their customers are set-up. External connection from page 5 of http://www.dfn.de/fileadmin/1Dienstleistungen/XWIN/X-WiN-Broschuere_deutsch.pdf
// Source: http://www-win.rrze.uni-erlangen.de/cgi-bin/ipqos/map.pl?config=win
// Type: REN
// DateType: Current
// Backbone: 1, Commercial: 0
// label: Dfn
// ToolsetVersion: 0.3.34dev-20120328
// Customer: 0, IX: 0
// SourceGitVersion: e278b1b
// LastAccess: 2/01/11
// LastProcessed: 2011_09_01
// Testbed: 1

// Nodes: 51, Edges: 80, Connectivity: 2
// AVG SSP length: 3.1905882352941175, Max SSP length: 6
// Original Nodes: 58, Edges: 87, Connectivity: 1
// OG AVG SSP length: 3.1820931639443435, Max SSP length: 6
// External Nodes removed: 7, One connected Nodes removed: 0

package od3r_eval.simulations.realworld_topologies;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
// import inet.visualizer.canvas.integrated.IntegratedCanvasVisualizer;
import inet.common.scenario.FailureGenerator;
import ned.DatarateChannel;
import inet.node.inet.Router;

network DFN
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

        router[51]: Router;

        // router[0] : Router { // node0
        // Label: CHE
        // Internal: 1
        // Country: Germany
        // }

        // router[1] : Router { // node1
        // Label: LEI
        // Internal: 1
        // Country: Germany
        // }

        // router[2] : Router { // node2
        // Label: ADH
        // Internal: 1
        // Country: Germany
        // }

        // router[3] : Router { // node3
        // Label: DRE
        // Internal: 1
        // Country: Germany
        // }

        // router[4] : Router { // node4
        // Label: GSI
        // Internal: 1
        // Country: Germany
        // }

        // router[5] : Router { // node5
        // Label: HEI
        // Internal: 1
        // Country: Germany
        // }

        // router[6] : Router { // node6
        // Label: JEN
        // Internal: 1
        // Country: Germany
        // }

        // router[7] : Router { // node7
        // Label: ILM
        // Internal: 1
        // Country: Germany
        // }

        // router[8] : Router { // node10
        // Label: FZK
        // Internal: 1
        // Country: Germany
        // }

        // router[9] : Router { // node11
        // Label: STU
        // Internal: 1
        // Country: Germany
        // }

        // router[10] : Router { // node14
        // Label: BIE
        // Internal: 1
        // Country: Germany
        // }

        // router[11] : Router { // node16
        // Label: GOE
        // Internal: 1
        // Country: Germany
        // }

        // router[12] : Router { // node17
        // Label: BRE
        // Internal: 1
        // Country: Germany
        // }

        // router[13] : Router { // node18
        // Label: WUP
        // Internal: 1
        // Country: Germany
        // }

        // router[14] : Router { // node19
        // Label: BIR
        // Internal: 1
        // Country: Germany
        // }

        // router[15] : Router { // node20
        // Label: BON
        // Internal: 1
        // Country: Germany
        // }

        // router[16] : Router { // node21
        // Label: MAR
        // Internal: 1
        // Country: Germany
        // }

        // router[17] : Router { // node22
        // Label: GIE
        // Internal: 1
        // Country: Germany
        // }

        // router[18] : Router { // node23
        // Label: KAS
        // Internal: 1
        // Country: Germany
        // }

        // router[19] : Router { // node24
        // Label: PAD
        // Internal: 1
        // Country: Germany
        // }

        // router[20] : Router { // node25
        // Label: EWE
        // Internal: 1
        // Country: Germany
        // }

        // router[21] : Router { // node27
        // Label: MUE
        // Internal: 1
        // Country: Germany
        // }

        // router[22] : Router { // node28
        // Label: SAA
        // Internal: 1
        // Country: Germany
        // }

        // router[23] : Router { // node30
        // Label: DES
        // Internal: 1
        // Country: Germany
        // }

        // router[24] : Router { // node31
        // Label: HAM
        // Internal: 1
        // Country: Germany
        // }

        // router[25] : Router { // node32
        // Label: KIE
        // Internal: 1
        // Country: Germany
        // }

        // router[26] : Router { // node33
        // Label: ROS
        // Internal: 1
        // Country: Germany
        // }

        // router[27] : Router { // node34
        // Label: MAG
        // Internal: 1
        // Country: Germany
        // }

        // router[28] : Router { // node35
        // Label: BRA
        // Internal: 1
        // Country: Germany
        // }

        // router[29] : Router { // node36
        // Label: KAI
        // Internal: 1
        // Country: Germany
        // }

        // router[30] : Router { // node37
        // Label: GRE
        // Internal: 1
        // Country: Germany
        // }

        // router[31] : Router { // node38
        // Label: DOR
        // Internal: 1
        // Country: Germany
        // }

        // router[32] : Router { // node39
        // Label: BOC
        // Internal: 1
        // Country: Germany
        // }

        // router[33] : Router { // node40
        // Label: FHM
        // Internal: 1
        // Country: Germany
        // }

        // router[34] : Router { // node41
        // Label: REG
        // Internal: 1
        // Country: Germany
        // }

        // router[35] : Router { // node42
        // Label: AUG
        // Internal: 1
        // Country: Germany
        // }

        // router[36] : Router { // node43
        // Label: GAR
        // Internal: 1
        // Country: Germany
        // }

        // router[37] : Router { // node44
        // Label: DUI
        // Internal: 1
        // Country: Germany
        // }

        // router[38] : Router { // node45
        // Label: FZJ
        // Internal: 1
        // Country: Germany
        // }

        // router[39] : Router { // node46
        // Label: AAC
        // Internal: 1
        // Country: Germany
        // }

        // router[40] : Router { // node47
        // Label: WUE
        // Internal: 1
        // Country: Germany
        // }

        // router[41] : Router { // node48
        // Label: TUB
        // Internal: 1
        // Country: Germany
        // }

        // router[42] : Router { // node49
        // Label: HUB
        // Internal: 1
        // Country: Germany
        // }

        // router[43] : Router { // node50
        // Label: HAN
        // Internal: 1
        // Country: Germany
        // }

        // router[44] : Router { // node51
        // Label: FRA
        // Internal: 1
        // Country: Germany
        // }

        // router[45] : Router { // node52
        // Label: POT
        // Internal: 1
        // Country: Germany
        // }

        // router[46] : Router { // node53
        // Label: ERL
        // Internal: 1
        // Country: Germany
        // }

        // router[47] : Router { // node54
        // Label: BAY
        // Internal: 1
        // Country: Germany
        // }

        // router[48] : Router { // node55
        // Label: FFO
        // Internal: 1
        // Country: Germany
        // }

        // router[49] : Router { // node56
        // Label: ZIB
        // Internal: 1
        // Country: Germany
        // }

        // router[50] : Router { // node57
        // Label: ZEU
        // Internal: 1
        // Country: Germany
        // }

    connections:
        router[0].pppg++ <--> Channel <--> router[1].pppg++;
        router[0].pppg++ <--> Channel <--> router[3].pppg++;
        router[1].pppg++ <--> Channel <--> router[46].pppg++;
        router[1].pppg++ <--> Channel <--> router[6].pppg++;
        router[2].pppg++ <--> Channel <--> router[49].pppg++;
        router[2].pppg++ <--> Channel <--> router[42].pppg++;
        router[3].pppg++ <--> Channel <--> router[45].pppg++;
        router[3].pppg++ <--> Channel <--> router[46].pppg++;
        router[4].pppg++ <--> Channel <--> router[44].pppg++;
        router[4].pppg++ <--> Channel <--> router[5].pppg++;
        router[5].pppg++ <--> Channel <--> router[8].pppg++;
        router[6].pppg++ <--> Channel <--> router[7].pppg++;
        router[7].pppg++ <--> Channel <--> router[46].pppg++;
        router[8].pppg++ <--> Channel <--> router[9].pppg++;
        router[8].pppg++ <--> Channel <--> router[44].pppg++;
        router[8].pppg++ <--> Channel <--> router[29].pppg++;
        router[9].pppg++ <--> Channel <--> router[36].pppg++;
        router[10].pppg++ <--> Channel <--> router[19].pppg++;
        router[10].pppg++ <--> Channel <--> router[43].pppg++;
        router[10].pppg++ <--> Channel <--> router[21].pppg++;
        router[11].pppg++ <--> Channel <--> router[43].pppg++;
        router[11].pppg++ <--> Channel <--> router[18].pppg++;
        router[12].pppg++ <--> Channel <--> router[20].pppg++;
        router[12].pppg++ <--> Channel <--> router[43].pppg++;
        router[12].pppg++ <--> Channel <--> router[24].pppg++;
        router[13].pppg++ <--> Channel <--> router[14].pppg++;
        router[13].pppg++ <--> Channel <--> router[31].pppg++;
        router[14].pppg++ <--> Channel <--> router[44].pppg++;
        router[14].pppg++ <--> Channel <--> router[15].pppg++;
        router[15].pppg++ <--> Channel <--> router[39].pppg++;
        router[16].pppg++ <--> Channel <--> router[17].pppg++;
        router[16].pppg++ <--> Channel <--> router[18].pppg++;
        router[17].pppg++ <--> Channel <--> router[44].pppg++;
        router[18].pppg++ <--> Channel <--> router[19].pppg++;
        router[20].pppg++ <--> Channel <--> router[21].pppg++;
        router[21].pppg++ <--> Channel <--> router[37].pppg++;
        router[22].pppg++ <--> Channel <--> router[44].pppg++;
        router[22].pppg++ <--> Channel <--> router[29].pppg++;
        router[23].pppg++ <--> Channel <--> router[41].pppg++;
        router[23].pppg++ <--> Channel <--> router[24].pppg++;
        router[25].pppg++ <--> Channel <--> router[26].pppg++;
        router[25].pppg++ <--> Channel <--> router[43].pppg++;
        router[26].pppg++ <--> Channel <--> router[43].pppg++;
        router[26].pppg++ <--> Channel <--> router[30].pppg++;
        router[27].pppg++ <--> Channel <--> router[28].pppg++;
        router[27].pppg++ <--> Channel <--> router[45].pppg++;
        router[28].pppg++ <--> Channel <--> router[43].pppg++;
        router[29].pppg++ <--> Channel <--> router[44].pppg++;
        router[30].pppg++ <--> Channel <--> router[45].pppg++;
        router[31].pppg++ <--> Channel <--> router[32].pppg++;
        router[32].pppg++ <--> Channel <--> router[37].pppg++;
        router[33].pppg++ <--> Channel <--> router[34].pppg++;
        router[33].pppg++ <--> Channel <--> router[36].pppg++;
        router[34].pppg++ <--> Channel <--> router[46].pppg++;
        router[35].pppg++ <--> Channel <--> router[36].pppg++;
        router[35].pppg++ <--> Channel <--> router[46].pppg++;
        router[36].pppg++ <--> Channel <--> router[44].pppg++;
        router[37].pppg++ <--> Channel <--> router[43].pppg++;
        router[37].pppg++ <--> Channel <--> router[38].pppg++;
        router[38].pppg++ <--> Channel <--> router[39].pppg++;
        router[39].pppg++ <--> Channel <--> router[44].pppg++;
        router[40].pppg++ <--> Channel <--> router[44].pppg++;
        router[40].pppg++ <--> Channel <--> router[46].pppg++;
        router[41].pppg++ <--> Channel <--> router[49].pppg++;
        router[41].pppg++ <--> Channel <--> router[42].pppg++;
        router[41].pppg++ <--> Channel <--> router[45].pppg++;
        router[41].pppg++ <--> Channel <--> router[50].pppg++;
        router[43].pppg++ <--> Channel <--> router[44].pppg++;
        router[43].pppg++ <--> Channel <--> router[45].pppg++;
        router[43].pppg++ <--> Channel <--> router[46].pppg++;
        router[43].pppg++ <--> Channel <--> router[48].pppg++;
        router[44].pppg++ <--> Channel <--> router[45].pppg++;
        router[44].pppg++ <--> Channel <--> router[46].pppg++;
        router[45].pppg++ <--> Channel <--> router[46].pppg++;
        router[45].pppg++ <--> Channel <--> router[47].pppg++;
        router[45].pppg++ <--> Channel <--> router[48].pppg++;
        router[45].pppg++ <--> Channel <--> router[49].pppg++;
        router[46].pppg++ <--> Channel <--> router[47].pppg++;
        router[48].pppg++ <--> Channel <--> router[49].pppg++;
        router[49].pppg++ <--> Channel <--> router[50].pppg++;
}
