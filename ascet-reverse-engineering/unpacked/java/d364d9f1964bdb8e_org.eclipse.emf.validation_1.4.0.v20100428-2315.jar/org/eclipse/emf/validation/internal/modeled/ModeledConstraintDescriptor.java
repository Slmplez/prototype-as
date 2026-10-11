/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.modeled;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.internal.modeled.ClassProvider;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.ModeEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.SeverityEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.UnparsedConstraint;
import org.eclipse.emf.validation.internal.util.XmlConstraintDescriptor;
import org.eclipse.emf.validation.model.ConstraintSeverity;
import org.eclipse.emf.validation.model.EvaluationMode;
import org.eclipse.emf.validation.preferences.EMFModelValidationPreferences;
import org.eclipse.emf.validation.service.AbstractConstraintDescriptor;
import org.eclipse.emf.validation.service.IParameterizedConstraintDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModeledConstraintDescriptor
extends AbstractConstraintDescriptor
implements IParameterizedConstraintDescriptor {
    private final String pluginId;
    private final ClassProvider classProvider;
    private String body = null;
    private EvaluationMode<?> evaluationMode = null;
    private String id = null;
    private String messagePattern = null;
    private String description = null;
    private String name = null;
    private ConstraintSeverity constraintSeverity = null;
    private int statusCode;
    private String language;
    private Map<String, String> parameters = null;
    private EClassifier targetClassifier;

    public ModeledConstraintDescriptor(String pluginId, ClassProvider classProvider) {
        this.pluginId = pluginId;
        this.classProvider = classProvider;
    }

    public final void setInitializationData(Constraint constraint) {
        ModeEnum mode;
        if (constraint instanceof UnparsedConstraint) {
            this.body = ((UnparsedConstraint)constraint).getBody();
        }
        if ((mode = constraint.getMode()).equals((Object)ModeEnum.BATCH)) {
            this.evaluationMode = EvaluationMode.BATCH;
        } else {
            if (mode.equals((Object)ModeEnum.LIVE)) {
                this.evaluationMode = EvaluationMode.LIVE;
                throw new UnsupportedOperationException("Live modeled constraints are not supported yet.");
            }
            this.evaluationMode = EvaluationMode.NULL;
        }
        this.messagePattern = this.classProvider.bind(constraint.getMessage(), null);
        this.description = this.classProvider.bind(constraint.getDescription(), null);
        this.name = this.classProvider.bind(constraint.getName(), null);
        SeverityEnum severity = constraint.getSeverity();
        switch (severity.getValue()) {
            case 3: {
                this.constraintSeverity = ConstraintSeverity.CANCEL;
                break;
            }
            case 2: {
                this.constraintSeverity = ConstraintSeverity.ERROR;
                break;
            }
            case 0: {
                this.constraintSeverity = ConstraintSeverity.INFO;
                break;
            }
            case 1: {
                this.constraintSeverity = ConstraintSeverity.WARNING;
                break;
            }
            default: {
                throw new IllegalArgumentException();
            }
        }
        EMap<String, String> localParameters = constraint.getParameters();
        if (localParameters == null || localParameters.size() == 0) {
            this.parameters = Collections.emptyMap();
        } else {
            this.parameters = new HashMap<String, String>(localParameters.size() * 2, 0.7f);
            this.parameters.putAll(localParameters.map());
        }
        this.statusCode = constraint.getStatusCode();
        this.language = constraint.getLang();
        if (constraint.getTarget() != null) {
            this.targetClassifier = constraint.getTarget().getEClass();
        }
        this.id = XmlConstraintDescriptor.normalizedId(this.pluginId, constraint.getId());
        if (EMFPlugin.IS_ECLIPSE_RUNNING) {
            EMFModelValidationPreferences.setConstraintDisabledDefault(this.getId(), !constraint.isIsEnabledByDefault());
        }
    }

    @Override
    public String getBody() {
        return this.body;
    }

    @Override
    public EvaluationMode<?> getEvaluationMode() {
        return this.evaluationMode;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public String getMessagePattern() {
        return this.messagePattern;
    }

    @Override
    public String getDescription() {
        return this.description;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public String getPluginId() {
        return this.pluginId;
    }

    @Override
    public ConstraintSeverity getSeverity() {
        return this.constraintSeverity;
    }

    @Override
    public int getStatusCode() {
        return this.statusCode;
    }

    @Override
    public boolean targetsEvent(Notification notification) {
        return false;
    }

    @Override
    public boolean targetsTypeOf(EObject eObject) {
        return this.targetClassifier.isInstance((Object)eObject);
    }

    @Override
    public String getLanguage() {
        return this.language;
    }

    @Override
    public String getParameterValue(String name) {
        return this.parameters.get(name);
    }

    public ClassProvider getClassProvider() {
        return this.classProvider;
    }
}

