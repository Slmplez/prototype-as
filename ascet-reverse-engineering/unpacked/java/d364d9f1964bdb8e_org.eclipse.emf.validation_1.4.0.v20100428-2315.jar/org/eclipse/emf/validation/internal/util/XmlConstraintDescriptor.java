/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.validation.internal.util;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.validation.EMFEventType;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.ConstraintSeverity;
import org.eclipse.emf.validation.model.EvaluationMode;
import org.eclipse.emf.validation.preferences.EMFModelValidationPreferences;
import org.eclipse.emf.validation.service.AbstractConstraintDescriptor;
import org.eclipse.emf.validation.service.ConstraintExistsException;
import org.eclipse.emf.validation.service.ConstraintRegistry;
import org.eclipse.emf.validation.service.IParameterizedConstraintDescriptor;
import org.eclipse.emf.validation.service.ModelValidationService;
import org.eclipse.emf.validation.util.XmlConfig;
import org.eclipse.emf.validation.xml.IXmlConstraintDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class XmlConstraintDescriptor
extends AbstractConstraintDescriptor
implements IXmlConstraintDescriptor,
IParameterizedConstraintDescriptor {
    static final String RULE_INCOMPLETE = ValidationMessages.rule_incomplete_ERROR_;
    static final String RULE_ID = ValidationMessages.rule_id;
    static final String RULE_NAME = ValidationMessages.rule_name;
    static final String RULE_BODY = ValidationMessages.rule_body;
    static final String MESSAGE_PATTERN = ValidationMessages.rule_message;
    private static final String NAMESPACE_URI_SEPARATOR = ":";
    private static final String EOBJECT_CLASS_NAME = "org.eclipse.emf.ecore.EObject";
    private final IConfigurationElement config;
    private String name;
    private String id;
    private int statusCode;
    private final String pluginId;
    private String description;
    private ConstraintSeverity severity;
    private EvaluationMode<?> mode;
    private Map<Object, TargetDescriptor> targetMap;
    private String messagePattern;
    private String body;
    private boolean resolved;
    private boolean isEnabledByDefault;

    public XmlConstraintDescriptor(IConfigurationElement config) throws ConstraintExistsException {
        block7: {
            int newStatusCode;
            this.severity = ConstraintSeverity.ERROR;
            this.targetMap = new HashMap<Object, TargetDescriptor>();
            this.resolved = false;
            this.isEnabledByDefault = true;
            this.config = config;
            this.name = config.getAttribute("name");
            String statusCodeStr = config.getAttribute("statusCode");
            this.pluginId = config.getDeclaringExtension().getNamespaceIdentifier();
            this.id = XmlConstraintDescriptor.normalizedId(this.pluginId, config.getAttribute("id"));
            try {
                newStatusCode = Integer.parseInt(statusCodeStr);
            }
            catch (NumberFormatException numberFormatException) {
                newStatusCode = 1;
            }
            this.statusCode = newStatusCode;
            try {
                this.assertNotNull(this.id, RULE_ID);
                this.assertNotNull(this.name, RULE_NAME);
                this.parseDescription(config);
                this.parseSeverity(config);
                this.parseTargets(config);
                this.parseIsEnabledByDefault(config);
                this.parseMessagePattern(config);
                this.setBody(config.getValue());
                ConstraintRegistry.getInstance().register(this);
                this.setEnabled(!EMFModelValidationPreferences.isConstraintDisabled(this.id));
                if (Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS)) {
                    Trace.trace("Initialized constraint " + this.id);
                }
            }
            catch (CoreException e) {
                Trace.catching(XmlConstraintDescriptor.class, "<init>", e);
                if (this.id == null) {
                    this.id = "$error." + System.identityHashCode(this);
                }
                if (this.name == null) {
                    this.name = this.id;
                }
                this.statusCode = 70;
                this.setError(e);
                this.setMessagePattern(e.getLocalizedMessage());
                if (!Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS)) break block7;
                Trace.trace("Initialized constraint " + this.id + " as error constraint.");
            }
        }
    }

    public static String normalizedId(String pluginId, String id) {
        assert (pluginId != null);
        assert (id != null);
        String result = id;
        if (!result.startsWith(pluginId)) {
            result = String.valueOf(pluginId) + '.' + result;
        }
        return result;
    }

    @Override
    public IConfigurationElement getConfig() {
        return this.config;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public String getPluginId() {
        return this.pluginId;
    }

    @Override
    public String getDescription() {
        return this.description;
    }

    private void setDescription(String description) {
        this.description = description;
    }

    @Override
    public ConstraintSeverity getSeverity() {
        return this.severity;
    }

    private void setSeverity(ConstraintSeverity severity) {
        assert (severity != null && !severity.isNull());
        this.severity = severity;
    }

    @Override
    public int getStatusCode() {
        return this.statusCode;
    }

    private TargetDescriptor getTarget(Object key) {
        TargetDescriptor result;
        if (Trace.shouldTraceEntering()) {
            Trace.entering(this.getClass(), "getTarget", new Object[]{key});
        }
        if ((result = this.targetMap.get(key)) == null) {
            result = new TargetDescriptor();
            this.targetMap.put(key, result);
            if (key instanceof EClass) {
                this.inheritTriggers((EClass)key, result);
            }
        }
        if (Trace.shouldTraceExiting()) {
            Trace.exiting(this.getClass(), "getTarget", result);
        }
        return result;
    }

    @Override
    public EvaluationMode<?> getEvaluationMode() {
        return this.mode;
    }

    private void setEvaluationMode(EvaluationMode<?> mode) {
        this.mode = mode;
    }

    @Override
    public void resolveTargetTypes(String[] namespaceUris) {
        if (this.resolved) {
            return;
        }
        this.resolved = true;
        Map<Object, TargetDescriptor> oldMap = this.targetMap;
        this.targetMap = new HashMap<Object, TargetDescriptor>();
        for (Map.Entry<Object, TargetDescriptor> next : oldMap.entrySet()) {
            String typeName = (String)next.getKey();
            EClass targetEClass = null;
            int separatorPosition = typeName.indexOf(NAMESPACE_URI_SEPARATOR);
            if (separatorPosition != -1) {
                String namespaceUri = typeName.substring(separatorPosition + 1);
                typeName = typeName.substring(0, separatorPosition);
                targetEClass = ModelValidationService.findClass(namespaceUri, typeName);
            } else {
                int i = 0;
                while (targetEClass == null && i < namespaceUris.length) {
                    targetEClass = ModelValidationService.findClass(namespaceUris[i], typeName);
                    ++i;
                }
            }
            if (targetEClass != null) {
                this.targetMap.put(targetEClass, next.getValue());
                if (!Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS)) continue;
                Trace.trace(EMFModelValidationDebugOptions.CONSTRAINTS, "Resolved target: " + typeName + " for: " + this);
                continue;
            }
            if (Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS)) {
                Trace.trace(EMFModelValidationDebugOptions.CONSTRAINTS, "Failed to resolve target: " + typeName + " for: " + this);
            }
            Log.warningMessage(70, EMFModelValidationStatusCodes.TARGET_TYPE_NOT_FOUND_MSG, new Object[]{this.getId(), typeName});
        }
        for (Map.Entry<Object, TargetDescriptor> next : this.targetMap.entrySet()) {
            this.inheritTriggers((EClass)next.getKey(), next.getValue());
        }
    }

    private void inheritTriggers(EClass target, TargetDescriptor descriptor) {
        for (Map.Entry<Object, TargetDescriptor> next : this.targetMap.entrySet()) {
            EClass otherTarget = (EClass)next.getKey();
            if (otherTarget == target || !otherTarget.isSuperTypeOf(target)) continue;
            descriptor.merge(next.getValue());
        }
    }

    private boolean isUniversal() {
        return this.targetMap.isEmpty();
    }

    @Override
    public boolean targetsTypeOf(EObject eObject) {
        return eObject == null ? false : this.isUniversal() || this.targetsType(eObject.eClass());
    }

    private boolean targetsType(EClass eClass) {
        return this.getTarget(eClass).isExplicit();
    }

    private TargetDescriptor addTargetType(String typeName) {
        TargetDescriptor result = typeName == null ? this.getTarget(EOBJECT_CLASS_NAME) : this.getTarget(typeName);
        result.setExplicit();
        return result;
    }

    @Override
    public boolean targetsEvent(Notification notification) {
        if (notification.getNotifier() instanceof EObject) {
            EObject eObject = (EObject)notification.getNotifier();
            EMFEventType eventType = EMFEventType.getInstance(notification.getEventType());
            EStructuralFeature changedFeature = null;
            if (notification.getFeature() instanceof EStructuralFeature) {
                changedFeature = (EStructuralFeature)notification.getFeature();
            }
            return eObject == null || eventType.isNull() ? false : this.isUniversal() && EMFEventType.getPredefinedInstances().contains(eventType) || !this.isUniversal() && this.targetsEvent(eObject.eClass(), eventType, changedFeature);
        }
        return false;
    }

    private boolean targetsEvent(EClass eClass, EMFEventType eventType, EStructuralFeature feature) {
        return this.getTarget(eClass).hasEvent(eventType, feature);
    }

    @Override
    public String getMessagePattern() {
        return this.messagePattern;
    }

    private void setMessagePattern(String messagePattern) {
        this.messagePattern = messagePattern;
    }

    @Override
    public String getBody() {
        return this.body;
    }

    private void setBody(String body) {
        this.body = body;
    }

    @Override
    public String getLanguage() {
        return this.getConfig().getAttribute("lang");
    }

    @Override
    public String getParameterValue(String name) {
        String result = XmlConfig.getParameter(this.getConfig(), name);
        if (result == null) {
            if ("class".equals(name)) {
                result = this.getConfig().getAttribute("class");
            } else if ("bundle".equals(name)) {
                result = this.getConfig().getDeclaringExtension().getNamespaceIdentifier();
            }
        }
        return result;
    }

    public boolean isEnabledByDefault() {
        return this.isEnabledByDefault;
    }

    private void parseDescription(IConfigurationElement extConfig) {
        IConfigurationElement[] descConfig = extConfig.getChildren("description");
        if (descConfig.length > 0) {
            this.setDescription(descConfig[0].getValue());
        }
        if (Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS)) {
            Trace.trace("Parsed constraint " + this.id + " description");
        }
    }

    private void parseMessagePattern(IConfigurationElement extConfig) throws CoreException {
        IConfigurationElement[] msgConfig = extConfig.getChildren("message");
        String newMessagePattern = null;
        if (msgConfig.length > 0) {
            newMessagePattern = msgConfig[0].getValue();
        }
        this.assertNotNull(newMessagePattern, MESSAGE_PATTERN);
        this.setMessagePattern(newMessagePattern);
        if (Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS)) {
            Trace.trace("Parsed constraint " + this.id + " message: " + newMessagePattern);
        }
    }

    private void parseMode(IConfigurationElement extConfig) {
        String modeName = extConfig.getAttribute("mode");
        if (modeName == null) {
            this.setEvaluationMode(EvaluationMode.BATCH);
        } else {
            this.setEvaluationMode(EvaluationMode.getInstance(modeName));
        }
        if (Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS)) {
            Trace.trace("Parsed constraint " + this.id + " mode: " + modeName);
        }
    }

    private void parseSeverity(IConfigurationElement extConfig) {
        String severityName = extConfig.getAttribute("severity");
        if (severityName == null) {
            this.setSeverity(ConstraintSeverity.ERROR);
        } else {
            this.setSeverity(ConstraintSeverity.getInstance(severityName));
        }
        if (Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS)) {
            Trace.trace("Parsed constraint " + this.id + " severity: " + severityName);
        }
    }

    private void parseTargets(IConfigurationElement extConfig) {
        IConfigurationElement[] targets;
        this.parseMode(extConfig);
        IConfigurationElement[] iConfigurationElementArray = targets = extConfig.getChildren("target");
        int n = targets.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement target = iConfigurationElementArray[n2];
            TargetDescriptor targetType = this.addTargetType(target.getAttribute("class"));
            if (this.getEvaluationMode().isLive()) {
                IConfigurationElement[] events;
                IConfigurationElement[] iConfigurationElementArray2 = events = XmlConfig.getEvents(target);
                int n3 = events.length;
                int n4 = 0;
                while (n4 < n3) {
                    IConfigurationElement element = iConfigurationElementArray2[n4];
                    EMFEventType eventType = EMFEventType.getInstance(element.getAttribute("name"));
                    if (!eventType.isNull()) {
                        IConfigurationElement[] features = element.getChildren("feature");
                        if (features == null || features.length == 0) {
                            targetType.addEvent(eventType);
                        } else {
                            IConfigurationElement[] iConfigurationElementArray3 = features;
                            int n5 = features.length;
                            int n6 = 0;
                            while (n6 < n5) {
                                IConfigurationElement element2 = iConfigurationElementArray3[n6];
                                targetType.addEvent(eventType, element2.getAttribute("name"));
                                ++n6;
                            }
                        }
                    }
                    ++n4;
                }
            }
            if (Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS)) {
                Trace.trace("Parsed constraint " + this.id + " target: " + target.getAttribute("class") + ": " + targetType);
            }
            ++n2;
        }
    }

    private void parseIsEnabledByDefault(IConfigurationElement extConfig) {
        String attr = extConfig.getAttribute("isEnabledByDefault");
        this.isEnabledByDefault = true;
        if (attr != null) {
            this.isEnabledByDefault = Boolean.parseBoolean(attr);
        }
        EMFModelValidationPreferences.setConstraintDisabledDefault(this.id, !this.isEnabledByDefault);
        if (Trace.shouldTrace(EMFModelValidationDebugOptions.CONSTRAINTS)) {
            Trace.trace("Parsed constraint " + this.id + " isEnabledByDefault: " + attr);
        }
    }

    private void assertNotNull(Object value, String missingItem) throws CoreException {
        if (value == null) {
            CoreException ce = new CoreException((IStatus)new Status(4, EMFModelValidationPlugin.getPluginId(), 70, EMFModelValidationPlugin.getMessage(RULE_INCOMPLETE, missingItem), null));
            Trace.throwing(this.getClass(), "assertNotNull", ce);
            throw ce;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class TargetDescriptor {
        private Collection<EMFEventType> nonFeatureSpecificEvents;
        private Map<EMFEventType, Collection<String>> featureSpecificEvents;
        private boolean explicit;

        TargetDescriptor() {
        }

        private Collection<EMFEventType> getNonFeatureSpecificEvents() {
            if (this.nonFeatureSpecificEvents == null) {
                this.nonFeatureSpecificEvents = new HashSet<EMFEventType>();
            }
            return this.nonFeatureSpecificEvents;
        }

        private Map<EMFEventType, Collection<String>> getFeatureSpecificEvents() {
            if (this.featureSpecificEvents == null) {
                this.featureSpecificEvents = new HashMap<EMFEventType, Collection<String>>();
            }
            return this.featureSpecificEvents;
        }

        boolean isExplicit() {
            return this.explicit;
        }

        void setExplicit() {
            this.explicit = true;
        }

        void addEvent(EMFEventType eventType) {
            this.getNonFeatureSpecificEvents().add(eventType);
        }

        void addEvent(EMFEventType eventType, String featureName) {
            if (featureName != null) {
                Collection<String> currentFeatures = this.getFeatureSpecificEvents().get(eventType);
                if (currentFeatures == null) {
                    currentFeatures = new HashSet<String>();
                    this.getFeatureSpecificEvents().put(eventType, currentFeatures);
                }
                currentFeatures.add(featureName);
            }
        }

        boolean hasEvent(EMFEventType eventType, EStructuralFeature feature) {
            boolean result;
            if (Trace.shouldTraceEntering()) {
                Trace.entering(this.getClass(), "hasEvent", new Object[]{eventType, feature});
            }
            String featureName = feature == null ? null : feature.getName();
            boolean bl = result = !(this.nonFeatureSpecificEvents != null && !this.nonFeatureSpecificEvents.isEmpty() || this.featureSpecificEvents != null && !this.featureSpecificEvents.isEmpty() || !this.isExplicit() || !EMFEventType.getPredefinedInstances().contains(eventType));
            if (!result) {
                if (this.nonFeatureSpecificEvents != null && this.nonFeatureSpecificEvents.contains(eventType)) {
                    result = true;
                } else if (featureName != null && this.featureSpecificEvents != null && this.featureSpecificEvents.containsKey(eventType)) {
                    Collection<String> eventFeatures = this.featureSpecificEvents.get(eventType);
                    result = eventFeatures.contains(featureName);
                }
            }
            if (Trace.shouldTraceExiting()) {
                Trace.exiting(this.getClass(), "hasEvent", result ? Boolean.TRUE : Boolean.FALSE);
            }
            return result;
        }

        void merge(TargetDescriptor parent) {
            if (parent.isExplicit()) {
                this.setExplicit();
            }
            if (parent.nonFeatureSpecificEvents != null) {
                this.getNonFeatureSpecificEvents().addAll(parent.nonFeatureSpecificEvents);
            }
            if (parent.featureSpecificEvents != null) {
                for (Map.Entry<EMFEventType, Collection<String>> next : parent.featureSpecificEvents.entrySet()) {
                    EMFEventType eventType = next.getKey();
                    Collection<String> features = next.getValue();
                    Collection<String> myFeatures = this.getFeatureSpecificEvents().get(eventType);
                    if (myFeatures == null) {
                        this.getFeatureSpecificEvents().put(eventType, new HashSet<String>(features));
                        continue;
                    }
                    myFeatures.addAll(features);
                }
            }
        }
    }
}

