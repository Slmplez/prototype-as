/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.resources;

import java.util.EventListener;
import org.eclipse.core.resources.ISaveContext;
import org.eclipse.core.runtime.CoreException;

public interface ISaveParticipant
extends EventListener {
    public void doneSaving(ISaveContext var1);

    public void prepareToSave(ISaveContext var1) throws CoreException;

    public void rollback(ISaveContext var1);

    public void saving(ISaveContext var1) throws CoreException;
}

