/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.type;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface AnyType
extends EObject {
    public FeatureMap getMixed();

    public FeatureMap getAny();

    public FeatureMap getAnyAttribute();
}

