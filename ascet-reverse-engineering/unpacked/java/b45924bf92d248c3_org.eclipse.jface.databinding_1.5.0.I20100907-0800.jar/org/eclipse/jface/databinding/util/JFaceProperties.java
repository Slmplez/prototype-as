/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 */
package org.eclipse.jface.databinding.util;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.internal.databinding.util.JFaceProperty;

public class JFaceProperties {
    public static IValueProperty value(Class clazz, String fieldName, String propertyName) {
        return new JFaceProperty(fieldName, propertyName, clazz);
    }
}

