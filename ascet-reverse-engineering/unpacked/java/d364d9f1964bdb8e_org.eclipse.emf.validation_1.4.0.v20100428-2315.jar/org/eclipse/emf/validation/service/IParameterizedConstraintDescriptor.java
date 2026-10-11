/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.service;

import org.eclipse.emf.validation.service.IConstraintDescriptor;

public interface IParameterizedConstraintDescriptor
extends IConstraintDescriptor {
    public static final String CLASS_PARAMETER = "class";
    public static final String BUNDLE_PARAMETER = "bundle";

    public String getLanguage();

    public String getParameterValue(String var1);
}

