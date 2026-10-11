/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.EntryActionType;
import com.etas.amd620.core.ComponentSpecification.ExitActionType;
import com.etas.amd620.core.ComponentSpecification.StaticActionType;
import org.eclipse.emf.ecore.EObject;

public interface ActionsType1
extends EObject {
    public EntryActionType getEntryAction();

    public void setEntryAction(EntryActionType var1);

    public StaticActionType getStaticAction();

    public void setStaticAction(StaticActionType var1);

    public ExitActionType getExitAction();

    public void setExitAction(ExitActionType var1);
}

