/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarOperationArgumentInstance;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface OperationArgumentInComponentInstanceRef
extends AtpInstanceRef {
    public AutosarOperationArgumentInstance getAutosarOperationArgumentInstance();

    public void setAutosarOperationArgumentInstance(AutosarOperationArgumentInstance var1);

    public SwComponentType getBase();

    public EList<SwComponentPrototype> getContextComponents();

    public PortPrototype getContextPortPrototype();

    public void setContextPortPrototype(PortPrototype var1);

    public ClientServerOperation getContextOperation();

    public void setContextOperation(ClientServerOperation var1);

    public ArgumentDataPrototype getRootArgumentDataPrototype();

    public void setRootArgumentDataPrototype(ArgumentDataPrototype var1);

    public EList<ApplicationCompositeElementDataPrototype> getContextDataPrototypes();

    public DataPrototype getTargetDataPrototype();

    public void setTargetDataPrototype(DataPrototype var1);
}

