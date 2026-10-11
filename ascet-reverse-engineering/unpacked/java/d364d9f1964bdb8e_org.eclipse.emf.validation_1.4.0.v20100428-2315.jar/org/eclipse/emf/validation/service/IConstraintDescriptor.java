/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.service;

import java.util.Set;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.model.Category;
import org.eclipse.emf.validation.model.ConstraintSeverity;
import org.eclipse.emf.validation.model.EvaluationMode;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IConstraintDescriptor {
    public String getName();

    public String getId();

    public String getPluginId();

    public String getDescription();

    public ConstraintSeverity getSeverity();

    public int getStatusCode();

    public EvaluationMode<?> getEvaluationMode();

    public boolean targetsTypeOf(EObject var1);

    public boolean targetsEvent(Notification var1);

    public boolean isBatch();

    public boolean isLive();

    public boolean isError();

    public Throwable getException();

    public boolean isEnabled();

    public void setEnabled(boolean var1);

    public void setError(Throwable var1);

    public Set<Category> getCategories();

    public void addCategory(Category var1);

    public void removeCategory(Category var1);

    public String getMessagePattern();

    public String getBody();
}

