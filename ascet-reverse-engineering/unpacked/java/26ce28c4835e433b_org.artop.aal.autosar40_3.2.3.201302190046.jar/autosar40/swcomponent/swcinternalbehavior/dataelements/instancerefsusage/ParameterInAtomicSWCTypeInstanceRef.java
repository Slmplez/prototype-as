/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ParameterInAtomicSWCTypeInstanceRef
extends AtpInstanceRef,
GParameterInAtomicSwcIRef {
    public AutosarParameterRef getAutosarParameterRef();

    public void setAutosarParameterRef(AutosarParameterRef var1);

    public AtomicSwComponentType getBase();

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public DataPrototype getRootParameterDataPrototype();

    public void setRootParameterDataPrototype(DataPrototype var1);

    public EList<ApplicationCompositeElementDataPrototype> getContextDataPrototypes();

    public DataPrototype getTargetDataPrototype();

    public void setTargetDataPrototype(DataPrototype var1);
}

