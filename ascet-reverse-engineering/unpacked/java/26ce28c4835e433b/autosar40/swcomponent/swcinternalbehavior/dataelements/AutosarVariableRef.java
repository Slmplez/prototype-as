/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ArVariableInImplementationDataInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.VariableInAtomicSWCTypeInstanceRef;

public interface AutosarVariableRef
extends ARObject {
    public ArVariableInImplementationDataInstanceRef getAutosarVariableInImplDatatype();

    public void setAutosarVariableInImplDatatype(ArVariableInImplementationDataInstanceRef var1);

    public VariableInAtomicSWCTypeInstanceRef getAutosarVariable();

    public void setAutosarVariable(VariableInAtomicSWCTypeInstanceRef var1);

    public VariableDataPrototype getLocalVariable();

    public void setLocalVariable(VariableDataPrototype var1);
}

