/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.portinterface.instancerefs;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.portinterface.ApplicationCompositeDataTypeSubElementRef;
import autosar40.swcomponent.portinterface.DataInterface;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ApplicationCompositeElementInPortInterfaceInstanceRef
extends AtpInstanceRef {
    public ApplicationCompositeDataTypeSubElementRef getApplicationCompositeDataTypeSubElementRef();

    public void setApplicationCompositeDataTypeSubElementRef(ApplicationCompositeDataTypeSubElementRef var1);

    public AutosarDataPrototype getRootDataPrototype();

    public void setRootDataPrototype(AutosarDataPrototype var1);

    public DataInterface getBase();

    public EList<ApplicationCompositeElementDataPrototype> getContextDataPrototypes();

    public ApplicationCompositeElementDataPrototype getTargetDataPrototype();

    public void setTargetDataPrototype(ApplicationCompositeElementDataPrototype var1);
}

