/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.VariableAccessScopeEnum;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;

public interface VariableAccess
extends Identifiable,
GVariableAccess {
    public AutosarVariableRef getAccessedVariable();

    public void setAccessedVariable(AutosarVariableRef var1);

    public VariableAccessScopeEnum getScope();

    public void setScope(VariableAccessScopeEnum var1);

    public void unsetScope();

    public boolean isSetScope();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

