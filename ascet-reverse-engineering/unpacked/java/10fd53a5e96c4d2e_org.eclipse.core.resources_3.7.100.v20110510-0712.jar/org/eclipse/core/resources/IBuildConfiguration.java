/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IAdaptable;

public interface IBuildConfiguration
extends IAdaptable {
    public static final String DEFAULT_CONFIG_NAME = "";

    public IProject getProject();

    public String getName();
}

