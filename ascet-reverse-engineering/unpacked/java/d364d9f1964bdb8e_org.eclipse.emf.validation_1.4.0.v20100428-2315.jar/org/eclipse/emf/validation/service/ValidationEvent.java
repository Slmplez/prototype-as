/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.emf.validation.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EventObject;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.validation.model.EvaluationMode;
import org.eclipse.emf.validation.model.IConstraintStatus;
import org.eclipse.emf.validation.service.ModelValidationService;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class ValidationEvent
extends EventObject {
    private static final long serialVersionUID = -7900125537603879206L;
    private final EvaluationMode<?> mode;
    private final Map<String, Object> clientData;
    private final IStatus status;
    private final Collection<?> targets;
    private List<IConstraintStatus> results;
    private Collection<String> clientContextIds = null;

    public <T> ValidationEvent(EvaluationMode<T> mode, Map<String, ?> clientData, Collection<? extends T> targets, IStatus status) {
        super(ModelValidationService.getInstance());
        this.mode = mode;
        this.status = status;
        this.targets = Collections.unmodifiableCollection(targets);
        this.clientData = clientData == null ? Collections.emptyMap() : Collections.unmodifiableMap(clientData);
    }

    public <T> ValidationEvent(EvaluationMode<T> mode, Map<String, ?> clientData, Collection<? extends T> targets, IStatus status, Collection<String> clientContextIds) {
        this(mode, clientData, targets, status);
        this.clientContextIds = clientContextIds;
    }

    public Collection<String> getClientContextIds() {
        if (this.clientContextIds == null) {
            this.clientContextIds = Collections.emptyList();
        }
        return this.clientContextIds;
    }

    public EvaluationMode<?> getEvaluationMode() {
        return this.mode;
    }

    public Map<String, Object> getClientData() {
        return this.clientData;
    }

    public Collection<?> getValidationTargets() {
        return this.targets;
    }

    public int getSeverity() {
        return this.status.getSeverity();
    }

    public boolean matches(int severityMask) {
        return this.status.matches(severityMask);
    }

    public List<IConstraintStatus> getValidationResults() {
        if (this.results == null) {
            if (this.status.isMultiStatus()) {
                IStatus[] children = this.status.getChildren();
                this.results = new ArrayList<IConstraintStatus>(children.length);
                IStatus[] iStatusArray = children;
                int n = children.length;
                int n2 = 0;
                while (n2 < n) {
                    IStatus element = iStatusArray[n2];
                    if (element instanceof IConstraintStatus) {
                        this.results.add((IConstraintStatus)element);
                    }
                    ++n2;
                }
                this.results = Collections.unmodifiableList(this.results);
            } else {
                this.results = this.status instanceof IConstraintStatus ? Collections.singletonList((IConstraintStatus)this.status) : Collections.emptyList();
            }
        }
        return this.results;
    }
}

