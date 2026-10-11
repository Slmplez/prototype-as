/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.model;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class EvaluationMode<T>
implements Serializable {
    private static final long serialVersionUID = 1862313226055912569L;
    public static final EvaluationMode<Notification> LIVE = new EvaluationMode("Live", ValidationMessages.mode_live);
    public static final EvaluationMode<EObject> BATCH = new EvaluationMode("Batch", ValidationMessages.mode_batch);
    public static final EvaluationMode<Void> NULL = new EvaluationMode("none", ValidationMessages.mode_unknown);
    private static final List<EvaluationMode<?>> instances = Collections.unmodifiableList(Arrays.asList(LIVE, BATCH, NULL));
    private final String name;
    private final String localizedName;

    private EvaluationMode(String name, String localizedName) {
        this.name = name;
        this.localizedName = localizedName;
    }

    public static <T> EvaluationMode<T> getInstance(String name) {
        EvaluationMode<Void> result = NULL;
        for (EvaluationMode<?> next : instances) {
            if (!next.getName().equalsIgnoreCase(name)) continue;
            result = next;
            break;
        }
        return result;
    }

    public static final List<EvaluationMode<?>> getAllInstances() {
        return instances;
    }

    public final String getName() {
        return this.name;
    }

    public final String getLocalizedName() {
        return this.localizedName;
    }

    public boolean isNull() {
        return this == NULL;
    }

    public boolean isLive() {
        return this == LIVE;
    }

    public boolean isBatch() {
        return this.isBatchOnly() || this.isLive();
    }

    public boolean isBatchOnly() {
        return this == BATCH;
    }

    public String toString() {
        return this.getName();
    }

    private Object readResolve() {
        return EvaluationMode.getInstance(this.getName());
    }
}

