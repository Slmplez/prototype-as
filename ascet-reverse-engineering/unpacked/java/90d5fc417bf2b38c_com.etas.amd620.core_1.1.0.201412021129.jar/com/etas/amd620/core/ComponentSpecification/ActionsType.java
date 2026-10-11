/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ActionType;
import com.etas.amd620.core.ComponentSpecification.ConditionType;
import org.eclipse.emf.ecore.EObject;

public interface ActionsType
extends EObject {
    public ActionType getAction();

    public void setAction(ActionType var1);

    public ConditionType getCondition();

    public void setCondition(ConditionType var1);
}

