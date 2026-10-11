/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.amd620;

import com.etas.amd620.core.ComponentMain.ComponentMainType;
import com.etas.amd620.core.amd620.AscetComponentType;
import org.eclipse.emf.ecore.EObject;

public interface AscetComponent
extends EObject {
    public ComponentMainType getComponentMainType();

    public void setComponentMainType(ComponentMainType var1);

    public String getName();

    public String getSchemaVersion();

    public String getQualifiedName();

    public AscetComponentType getType();
}

