/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarVariableInstance;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface VariableInComponentInstanceRef
extends AtpInstanceRef {
    public AutosarVariableInstance getAutosarVariableInstance();

    public void setAutosarVariableInstance(AutosarVariableInstance var1);

    public SwComponentType getBase();

    public EList<SwComponentPrototype> getContextComponents();

    public PortPrototype getContextPortPrototype();

    public void setContextPortPrototype(PortPrototype var1);

    public VariableDataPrototype getRootVariableDataPrototype();

    public void setRootVariableDataPrototype(VariableDataPrototype var1);

    public EList<ApplicationCompositeElementDataPrototype> getContextDataPrototypes();

    public DataPrototype getTargetDataProtoype();

    public void setTargetDataProtoype(DataPrototype var1);
}

