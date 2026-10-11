/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentData;

import com.etas.amd620.core.ComponentData.FormattedTextT;
import com.etas.amd620.core.ComponentData.ViewType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface NoteType
extends EObject {
    public FormattedTextT getText();

    public void setText(FormattedTextT var1);

    public EList<ViewType> getView();

    public String getName();

    public void setName(String var1);
}

