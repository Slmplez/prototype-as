/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import java.util.Arrays;
import org.eclipse.pde.internal.runtime.registry.model.ModelObject;

public class ServiceName
extends ModelObject
implements Comparable {
    private String[] classes;

    public ServiceName(String[] classes) {
        this.classes = classes;
    }

    public String[] getClasses() {
        return this.classes;
    }

    public ModelObject[] getChildren() {
        if (this.model == null) {
            return new ModelObject[0];
        }
        return this.model.getServices(this.classes);
    }

    private static int hashCode(Object[] array) {
        int prime = 31;
        if (array == null) {
            return 0;
        }
        int result = 1;
        int index = 0;
        while (index < array.length) {
            result = prime * result + (array[index] == null ? 0 : array[index].hashCode());
            ++index;
        }
        return result;
    }

    public int hashCode() {
        return 31 * ServiceName.hashCode(this.classes);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        ServiceName other = (ServiceName)obj;
        return Arrays.equals(this.classes, other.classes);
    }

    public int compareTo(Object obj) {
        if (obj instanceof ServiceName) {
            ServiceName other = (ServiceName)obj;
            String myClass = this.classes[0];
            String otherClass = other.getClasses()[0];
            return myClass.compareTo(otherClass);
        }
        return 0;
    }
}

