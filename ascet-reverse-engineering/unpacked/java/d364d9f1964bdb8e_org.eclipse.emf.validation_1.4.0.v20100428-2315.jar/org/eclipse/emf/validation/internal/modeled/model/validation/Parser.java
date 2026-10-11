/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.modeled.model.validation;

import org.eclipse.emf.ecore.EObject;

public interface Parser
extends EObject {
    public String getLanguage();

    public void setLanguage(String var1);

    public String getClassName();

    public void setClassName(String var1);
}

