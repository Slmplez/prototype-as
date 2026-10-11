/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.signalpaths.instanceref;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.portinterface.OperationPrototype;
import autosar3x.system.SoftwareComposition;
import autosar3x.system.signalpaths.SwcToSwcOperationArguments;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcToSwcOperationArgumentsOperation
extends ARObject {
    public SwcToSwcOperationArguments getSwcToSwcOperationArguments();

    public void setSwcToSwcOperationArguments(SwcToSwcOperationArguments var1);

    public SoftwareComposition getSoftwareComposition();

    public void setSoftwareComposition(SoftwareComposition var1);

    public EList<ComponentPrototype> getComponentPrototypes();

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public OperationPrototype getOperationPrototype();

    public void setOperationPrototype(OperationPrototype var1);
}

