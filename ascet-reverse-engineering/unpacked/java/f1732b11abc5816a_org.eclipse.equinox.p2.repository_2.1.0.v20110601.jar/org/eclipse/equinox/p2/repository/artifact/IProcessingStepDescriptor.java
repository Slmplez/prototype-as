/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.repository.artifact;

public interface IProcessingStepDescriptor {
    public String getProcessorId();

    public String getData();

    public boolean isRequired();
}

