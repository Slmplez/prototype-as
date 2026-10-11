/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.publisher.actions;

import java.io.File;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

public interface IRootFilesAdvice
extends IPublisherAdvice {
    public File getRoot();

    public File[] getIncludedFiles();

    public File[] getExcludedFiles();
}

