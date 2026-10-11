/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.repository.artifact.spi;

import org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor;

public class ProcessingStepDescriptor
implements IProcessingStepDescriptor {
    private final String processorId;
    private final String data;
    private final boolean required;

    public ProcessingStepDescriptor(String processorId, String data, boolean required) {
        this.processorId = processorId;
        this.data = data;
        this.required = required;
    }

    public String getProcessorId() {
        return this.processorId;
    }

    public String getData() {
        return this.data;
    }

    public boolean isRequired() {
        return this.required;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.data == null ? 0 : this.data.hashCode());
        result = 31 * result + (this.processorId == null ? 0 : this.processorId.hashCode());
        result = 31 * result + (this.required ? 1231 : 1237);
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof IProcessingStepDescriptor)) {
            return false;
        }
        IProcessingStepDescriptor other = (IProcessingStepDescriptor)obj;
        if (this.data == null ? other.getData() != null : !this.data.equals(other.getData())) {
            return false;
        }
        if (this.processorId == null ? other.getProcessorId() != null : !this.processorId.equals(other.getProcessorId())) {
            return false;
        }
        return this.required == other.isRequired();
    }

    public String toString() {
        return "Processor: " + this.processorId + (this.required ? "(req)" : "(notReq)") + " ,data: " + this.data;
    }
}

