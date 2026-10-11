/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ArVariableInImplementationDataInstanceRef
extends AtpInstanceRef {
    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public VariableDataPrototype getRootVariableDataPrototype();

    public void setRootVariableDataPrototype(VariableDataPrototype var1);

    public EList<ImplementationDataTypeElement> getContextDataPrototypes();

    public ImplementationDataTypeElement getTargetDataPrototype();

    public void setTargetDataPrototype(ImplementationDataTypeElement var1);
}

