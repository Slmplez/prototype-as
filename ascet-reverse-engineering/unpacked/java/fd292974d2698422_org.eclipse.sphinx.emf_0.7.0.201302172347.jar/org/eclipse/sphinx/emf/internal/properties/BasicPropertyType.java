/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.emf.internal.properties;

import org.eclipse.sphinx.emf.internal.properties.IPropertyType;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicPropertyType
implements IPropertyType {
    protected String featureName;
    protected Class<?> valueType;

    public BasicPropertyType(String featureName, Class<?> valueType) {
        this.featureName = featureName;
        this.valueType = valueType;
    }

    @Override
    public String getFeatureName() {
        return this.featureName;
    }

    @Override
    public Class<?> getValueType() {
        return this.valueType;
    }

    public boolean equals(Object object) {
        if (object instanceof BasicPropertyType) {
            boolean areValueTypesEqual;
            boolean areFeatureNamesEqual;
            BasicPropertyType propertyType = (BasicPropertyType)object;
            boolean bl = this.featureName != null ? this.featureName.equals(propertyType.featureName) : (areFeatureNamesEqual = propertyType.featureName == null);
            boolean bl2 = this.valueType != null ? this.valueType.equals(propertyType.valueType) : (areValueTypesEqual = propertyType.valueType == null);
            return areFeatureNamesEqual && areValueTypesEqual;
        }
        return super.equals(object);
    }

    public int hashCode() {
        int hash = 0;
        if (this.featureName != null) {
            hash += this.featureName.hashCode();
        }
        if (this.valueType != null) {
            hash += this.valueType.hashCode();
        }
        return hash;
    }

    public String toString() {
        return "Feature:     " + this.featureName + "\nValueType: " + this.valueType != null ? this.valueType.getName() : null;
    }
}

