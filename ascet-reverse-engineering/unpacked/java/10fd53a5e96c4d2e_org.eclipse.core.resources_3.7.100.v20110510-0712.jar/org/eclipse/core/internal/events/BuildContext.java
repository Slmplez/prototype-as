/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.events;

import java.util.Arrays;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IBuildContext;
import org.eclipse.core.runtime.Assert;

public class BuildContext
implements IBuildContext {
    private final IBuildConfiguration buildConfiguration;
    private final IBuildConfiguration[] requestedBuilt;
    private final IBuildConfiguration[] buildOrder;

    public BuildContext(IBuildConfiguration buildConfiguration) {
        this.buildConfiguration = buildConfiguration;
        this.buildOrder = new IBuildConfiguration[]{buildConfiguration};
        this.requestedBuilt = this.buildOrder;
    }

    public BuildContext(IBuildConfiguration buildConfiguration, IBuildConfiguration[] requestedBuilt, IBuildConfiguration[] buildOrder) {
        this.buildConfiguration = buildConfiguration;
        this.requestedBuilt = requestedBuilt;
        this.buildOrder = buildOrder;
    }

    private int findBuildConfigurationIndex() {
        int position = -1;
        int i = 0;
        while (i < this.buildOrder.length) {
            if (this.buildOrder[i].equals(this.buildConfiguration)) {
                position = i;
                break;
            }
            ++i;
        }
        Assert.isTrue((position >= 0 && position < this.buildOrder.length ? 1 : 0) != 0);
        return position;
    }

    public IBuildConfiguration[] getRequestedConfigs() {
        return (IBuildConfiguration[])this.requestedBuilt.clone();
    }

    public IBuildConfiguration[] getAllReferencedBuildConfigs() {
        int position = this.findBuildConfigurationIndex();
        IBuildConfiguration[] builtBefore = new IBuildConfiguration[position];
        System.arraycopy(this.buildOrder, 0, builtBefore, 0, builtBefore.length);
        return builtBefore;
    }

    public IBuildConfiguration[] getAllReferencingBuildConfigs() {
        int position = this.findBuildConfigurationIndex();
        IBuildConfiguration[] builtAfter = new IBuildConfiguration[this.buildOrder.length - position - 1];
        System.arraycopy(this.buildOrder, position + 1, builtAfter, 0, builtAfter.length);
        return builtAfter;
    }

    private static final int hashCode(IBuildConfiguration[] array) {
        int result = 1;
        int i = 0;
        while (i < array.length) {
            result = 31 * result + array[i].hashCode();
            ++i;
        }
        return result;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + this.buildConfiguration.hashCode();
        result = 31 * result + BuildContext.hashCode(this.requestedBuilt);
        result = 31 * result + BuildContext.hashCode(this.buildOrder);
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        BuildContext other = (BuildContext)obj;
        if (!this.buildConfiguration.equals(other.buildConfiguration)) {
            return false;
        }
        if (!Arrays.equals(this.requestedBuilt, other.requestedBuilt)) {
            return false;
        }
        return Arrays.equals(this.buildOrder, other.buildOrder);
    }
}

