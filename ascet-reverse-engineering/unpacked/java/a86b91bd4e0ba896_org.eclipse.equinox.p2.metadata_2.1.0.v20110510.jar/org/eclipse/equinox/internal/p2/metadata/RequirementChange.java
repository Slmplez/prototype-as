/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import org.eclipse.equinox.internal.p2.metadata.IRequiredCapability;
import org.eclipse.equinox.p2.metadata.IRequirementChange;

public class RequirementChange
implements IRequirementChange {
    private IRequiredCapability applyOn;
    private IRequiredCapability newValue;

    public RequirementChange(IRequiredCapability applyOn2, IRequiredCapability newValue2) {
        if (applyOn2 == null && newValue2 == null) {
            throw new IllegalArgumentException();
        }
        this.applyOn = applyOn2;
        this.newValue = newValue2;
    }

    public IRequiredCapability applyOn() {
        return this.applyOn;
    }

    public IRequiredCapability newValue() {
        return this.newValue;
    }

    public boolean matches(IRequiredCapability toMatch) {
        if (!toMatch.getNamespace().equals(this.applyOn.getNamespace())) {
            return false;
        }
        if (!toMatch.getName().equals(this.applyOn.getName())) {
            return false;
        }
        if (toMatch.getRange().equals(this.applyOn.getRange())) {
            return true;
        }
        return toMatch.getRange().intersect(this.applyOn.getRange()) != null;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.applyOn == null ? 0 : this.applyOn.hashCode());
        result = 31 * result + (this.newValue == null ? 0 : this.newValue.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof IRequirementChange)) {
            return false;
        }
        IRequirementChange other = (IRequirementChange)obj;
        if (this.applyOn == null ? other.applyOn() != null : !this.applyOn.equals(other.applyOn())) {
            return false;
        }
        return !(this.newValue == null ? other.newValue() != null : !this.newValue.equals(other.newValue()));
    }

    public String toString() {
        return this.applyOn + " --> " + this.newValue;
    }
}

