/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.PrePostHooksType;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface TaskBaseT
extends EObject {
    public PrePostHooksType getPrePostHooks();

    public void setPrePostHooks(PrePostHooksType var1);

    public void unsetPrePostHooks();

    public boolean isSetPrePostHooks();

    public BigInteger getPriority();

    public void setPriority(BigInteger var1);
}

