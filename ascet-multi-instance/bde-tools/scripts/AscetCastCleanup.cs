using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Ascet;

// One fixed failed research trial. Not a general agent endpoint.
class AscetCastCleanup
{
    static object Canon(object value) {
        var map=value as Dictionary<string,object>;
        if(map!=null) { var sorted=new SortedDictionary<string,object>(); foreach(var p in map) sorted.Add(p.Key,Canon(p.Value)); return sorted; }
        var items=value as object[];
        if(items!=null) { var result=new List<object>(); foreach(var item in items) result.Add(Canon(item)); return result; }
        return value;
    }
    static string Canonical(object value) { return AscetStructureRead.Json.Serialize(Canon(AscetStructureRead.Json.DeserializeObject(AscetStructureRead.Json.Serialize(value)))); }
    static int Main(string[] args) {
        if(args.Length!=2 || File.Exists(args[1]))return 2;
        var result=new Dictionary<string,object>();
        System.Action save=()=>File.WriteAllText(args[1],AscetStructureRead.Json.Serialize(result),new UTF8Encoding(false));
        Ascet ascet=null;int exit=1;
        try {
            Cebra.initCebraToolIndependent(false,false,null,null);Cebra.initialized=true;
            ToolClient.registerTool("Ascet",new ToolEntry("127.0.0.1",32503));
            ascet=new Ascet();if(ascet.nullHandle())throw new Exception("No ASCET handle");
            var dirty=ascet.GetAllEditorsWithUnsavedChanges();if(dirty==null||dirty.Length!=0)throw new Exception("Dirty editor");
            var db=ascet.GetCurrentDataBase();
            var component=db.GetItemInFolder("Trial_AEB_Core_20260930_123955","BDE_Tool_Experiments") as AscetDiscreteComponent;
            if(component==null||component.GetOID()!="040ts00000001qg714f0bbebu1n00")throw new Exception("Wrong fixture");
            var diagram=component.GetDiagramWithName("Main") as BlockDiagram;
            var actual=AscetStructureExperiment.Graph(diagram);
            var expected=AscetStructureRead.Json.DeserializeObject(File.ReadAllText(args[0],Encoding.UTF8));
            if(Canonical(actual)!=Canonical(expected))throw new Exception("Public graph changed since audited cleanup intent");
            var casts=component.GetAllImplementationCasts();
            if(casts.Length!=1||casts[0].GetName()!="Eval_implementation_cast")throw new Exception("Cast ownership changed");
            BlockDiagramElement target=null;
            foreach(var n in diagram.GetAllDiagramElements())if(n.GetGraphicalObjectIdentifier()==545)target=n;
            if(target==null)throw new Exception("Created graph target missing");
            foreach(var pin in target.GetAllPins())if(pin.GetAllBlockDiagramConnections().Length!=0)throw new Exception("Cast gained connections");
            result["intent"]="Remove only failed trial n545 and Eval_implementation_cast";save();
            if(!diagram.RemoveDiagramElement(target))throw new Exception("Node removal unconfirmed");
            result["node_removed"]=true;save();
            if(!component.RemoveModelElement(casts[0]))throw new Exception("Definition removal unconfirmed");
            result["model_removed"]=true;save();
            if(!diagram.StoreToCache())throw new Exception("Store unconfirmed");
            result["public_after"]=AscetStructureExperiment.Graph(diagram);
            result["casts_remaining"]=component.GetAllImplementationCasts().Length;
            result["status"]="completed";exit=0;
        }catch(Exception e){result["error"]=e.ToString();}
        finally{save();if(ascet!=null&&!ascet.nullHandle()){ascet.DisconnectFromTool();GC.SuppressFinalize(ascet);}}
        Environment.Exit(exit);return exit;
    }
}
