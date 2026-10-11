/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentData;

import com.etas.amd620.core.ComponentData.NoteType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface NotesT
extends EObject {
    public EList<NoteType> getNote();
}

