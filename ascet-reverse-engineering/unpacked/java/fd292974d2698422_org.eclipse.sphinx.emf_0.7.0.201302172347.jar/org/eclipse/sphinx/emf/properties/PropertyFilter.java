/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.sphinx.emf.properties;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.emf.ecore.EStructuralFeature;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PropertyFilter {
    protected Set<String> featureNames = new HashSet<String>();
    protected boolean accept;

    public PropertyFilter(boolean accept) {
        this.accept = accept;
    }

    public PropertyFilter(String[] featureNames, boolean accept) {
        this(Arrays.asList(featureNames), accept);
    }

    public PropertyFilter(List<String> featureNames, boolean accept) {
        if (featureNames != null) {
            this.featureNames.addAll(featureNames);
        }
        this.accept = accept;
    }

    public void setFeatureNames(String[] featureNames) {
        this.setFeatureNames(Arrays.asList(featureNames));
    }

    public void setFeatureNames(List<String> featureNames) {
        if (featureNames != null) {
            this.featureNames.addAll(featureNames);
        }
    }

    public boolean accept(Object owner, EStructuralFeature feature) {
        for (String featureName : this.featureNames) {
            if (!featureName.equals(feature.getName())) continue;
            return this.accept;
        }
        return !this.accept;
    }
}

