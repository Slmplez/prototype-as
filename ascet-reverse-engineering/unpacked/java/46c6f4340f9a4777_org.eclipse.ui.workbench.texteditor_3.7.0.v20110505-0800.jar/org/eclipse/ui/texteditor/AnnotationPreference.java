/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.RGB
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.texteditor;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.texteditor.IAnnotationImageProvider;
import org.osgi.framework.Bundle;

public class AnnotationPreference {
    public static final String STYLE_NONE = "NONE";
    public static final String STYLE_SQUIGGLES = "SQUIGGLES";
    public static final String STYLE_PROBLEM_UNDERLINE = "PROBLEM_UNDERLINE";
    public static final String STYLE_BOX = "BOX";
    public static final String STYLE_DASHED_BOX = "DASHED_BOX";
    public static final String STYLE_UNDERLINE = "UNDERLINE";
    public static final String STYLE_IBEAM = "IBEAM";
    protected static final Object IMAGE_DESCRIPTOR = new Object();
    protected static final Object QUICK_FIX_IMAGE_DESCRIPTOR = new Object();
    protected static final Object PREFERENCE_LABEL = new Object();
    protected static final Object PRESENTATION_LAYER = new Object();
    protected static final Object SYMBOLIC_IMAGE_NAME = new Object();
    protected static final Object HEADER_VALUE = new Object();
    protected static final Object IMAGE_PROVIDER = new Object();
    protected static final Object INCLUDE_ON_PREFERENCE_PAGE = new Object();
    protected static final Object TEXT_PREFERENCE_KEY = new Object();
    protected static final Object TEXT_PREFERENCE_VALUE = new Object();
    protected static final Object COLOR_PREFERENCE_KEY = new Object();
    protected static final Object COLOR_PREFERENCE_VALUE = new Object();
    protected static final Object HIGHLIGHT_PREFERENCE_KEY = new Object();
    protected static final Object HIGHLIGHT_PREFERENCE_VALUE = new Object();
    protected static final Object IS_GO_TO_NEXT_TARGET_KEY = new Object();
    protected static final Object IS_GO_TO_NEXT_TARGET_VALUE = new Object();
    protected static final Object IS_GO_TO_PREVIOUS_TARGET_KEY = new Object();
    protected static final Object IS_GO_TO_PREVIOUS_TARGET_VALUE = new Object();
    protected static final Object VERTICAL_RULER_PREFERENCE_KEY = new Object();
    protected static final Object VERTICAL_RULER_PREFERENCE_VALUE = new Object();
    protected static final Object OVERVIEW_RULER_PREFERENCE_KEY = new Object();
    protected static final Object OVERVIEW_RULER_PREFERENCE_VALUE = new Object();
    protected static final Object SHOW_IN_NAVIGATION_DROPDOWN_KEY = new Object();
    protected static final Object SHOW_IN_NAVIGATION_DROPDOWN_VALUE = new Object();
    protected static final Object TEXT_STYLE_PREFERENCE_KEY = new Object();
    protected static final Object TEXT_STYLE_PREFERENCE_VALUE = new Object();
    protected static final Object[] ATTRIBUTES = new Object[]{IMAGE_DESCRIPTOR, QUICK_FIX_IMAGE_DESCRIPTOR, PREFERENCE_LABEL, PRESENTATION_LAYER, SYMBOLIC_IMAGE_NAME, HEADER_VALUE, IMAGE_PROVIDER, TEXT_PREFERENCE_KEY, TEXT_PREFERENCE_VALUE, COLOR_PREFERENCE_KEY, COLOR_PREFERENCE_VALUE, HIGHLIGHT_PREFERENCE_KEY, HIGHLIGHT_PREFERENCE_VALUE, IS_GO_TO_NEXT_TARGET_KEY, IS_GO_TO_NEXT_TARGET_VALUE, IS_GO_TO_PREVIOUS_TARGET_KEY, IS_GO_TO_PREVIOUS_TARGET_VALUE, VERTICAL_RULER_PREFERENCE_KEY, VERTICAL_RULER_PREFERENCE_VALUE, OVERVIEW_RULER_PREFERENCE_KEY, OVERVIEW_RULER_PREFERENCE_VALUE, SHOW_IN_NAVIGATION_DROPDOWN_KEY, SHOW_IN_NAVIGATION_DROPDOWN_VALUE, TEXT_STYLE_PREFERENCE_KEY, TEXT_STYLE_PREFERENCE_VALUE, INCLUDE_ON_PREFERENCE_PAGE};
    private Object fAnnotationType;
    private String fMarkerType;
    private int fSeverity;
    public IAnnotationImageProvider fAnnotationImageProvider;
    public IConfigurationElement fConfigurationElement;
    public String fAnnotationImageProviderAttribute;
    private Map fAttributes = new HashMap();

    public AnnotationPreference() {
    }

    public AnnotationPreference(Object annotationType, String colorKey, String textKey, String overviewRulerKey, int presentationLayer) {
        this.fAnnotationType = annotationType;
        this.setValue(COLOR_PREFERENCE_KEY, colorKey);
        this.setValue(TEXT_PREFERENCE_KEY, textKey);
        this.setValue(OVERVIEW_RULER_PREFERENCE_KEY, overviewRulerKey);
        this.setValue(PRESENTATION_LAYER, presentationLayer);
    }

    protected void setValue(Object attribute, Object value) {
        this.fAttributes.put(attribute, value);
    }

    protected void setValue(Object attribute, int value) {
        this.fAttributes.put(attribute, new Integer(value));
    }

    protected void setValue(Object attribute, boolean value) {
        this.fAttributes.put(attribute, value ? Boolean.TRUE : Boolean.FALSE);
    }

    protected String getStringValue(Object attribute) {
        Object value = this.fAttributes.get(attribute);
        if (value instanceof String) {
            return (String)value;
        }
        return null;
    }

    protected boolean getBooleanValue(Object attribute) {
        Object value = this.fAttributes.get(attribute);
        if (value instanceof Boolean) {
            return (Boolean)value;
        }
        return false;
    }

    protected int getIntegerValue(Object attribute) {
        Object value = this.fAttributes.get(attribute);
        if (value instanceof Integer) {
            return (Integer)value;
        }
        return 0;
    }

    public Object getValue(Object attribute) {
        return this.fAttributes.get(attribute);
    }

    public boolean hasValue(Object attribute) {
        return this.fAttributes.get(attribute) != null;
    }

    public boolean isPreferenceKey(String key) {
        if (key == null) {
            return false;
        }
        return key.equals(this.getStringValue(COLOR_PREFERENCE_KEY)) || key.equals(this.getStringValue(OVERVIEW_RULER_PREFERENCE_KEY)) || key.equals(this.getStringValue(TEXT_PREFERENCE_KEY)) || key.equals(this.getStringValue(HIGHLIGHT_PREFERENCE_KEY)) || key.equals(this.getStringValue(TEXT_STYLE_PREFERENCE_KEY)) || key.equals(this.getStringValue(VERTICAL_RULER_PREFERENCE_KEY));
    }

    public Object getAnnotationType() {
        return this.fAnnotationType;
    }

    public String getMarkerType() {
        return this.fMarkerType;
    }

    public int getSeverity() {
        return this.fSeverity;
    }

    public void setAnnotationType(Object annotationType) {
        this.fAnnotationType = annotationType;
    }

    public void setMarkerType(String markerType) {
        this.fMarkerType = markerType;
    }

    public void setSeverity(int severity) {
        this.fSeverity = severity;
    }

    public String getColorPreferenceKey() {
        return this.getStringValue(COLOR_PREFERENCE_KEY);
    }

    public RGB getColorPreferenceValue() {
        return (RGB)this.getValue(COLOR_PREFERENCE_VALUE);
    }

    public String getPreferenceLabel() {
        return this.getStringValue(PREFERENCE_LABEL);
    }

    public String getOverviewRulerPreferenceKey() {
        return this.getStringValue(OVERVIEW_RULER_PREFERENCE_KEY);
    }

    public boolean getOverviewRulerPreferenceValue() {
        return this.getBooleanValue(OVERVIEW_RULER_PREFERENCE_VALUE);
    }

    public String getVerticalRulerPreferenceKey() {
        return this.getStringValue(VERTICAL_RULER_PREFERENCE_KEY);
    }

    public boolean getVerticalRulerPreferenceValue() {
        return this.getBooleanValue(VERTICAL_RULER_PREFERENCE_VALUE);
    }

    public int getPresentationLayer() {
        return this.getIntegerValue(PRESENTATION_LAYER);
    }

    public String getTextPreferenceKey() {
        return this.getStringValue(TEXT_PREFERENCE_KEY);
    }

    public boolean getTextPreferenceValue() {
        return this.getBooleanValue(TEXT_PREFERENCE_VALUE);
    }

    public String getHighlightPreferenceKey() {
        return this.getStringValue(HIGHLIGHT_PREFERENCE_KEY);
    }

    public boolean getHighlightPreferenceValue() {
        return this.getBooleanValue(HIGHLIGHT_PREFERENCE_VALUE);
    }

    public boolean contributesToHeader() {
        return this.getBooleanValue(HEADER_VALUE);
    }

    public void setColorPreferenceKey(String colorKey) {
        this.setValue(COLOR_PREFERENCE_KEY, colorKey);
    }

    public void setColorPreferenceValue(RGB colorValue) {
        this.setValue(COLOR_PREFERENCE_VALUE, colorValue);
    }

    public void setPreferenceLabel(String label) {
        this.setValue(PREFERENCE_LABEL, label);
    }

    public void setOverviewRulerPreferenceKey(String overviewRulerKey) {
        this.setValue(OVERVIEW_RULER_PREFERENCE_KEY, overviewRulerKey);
    }

    public void setOverviewRulerPreferenceValue(boolean overviewRulerValue) {
        this.setValue(OVERVIEW_RULER_PREFERENCE_VALUE, overviewRulerValue);
    }

    public void setVerticalRulerPreferenceKey(String verticalRulerKey) {
        this.setValue(VERTICAL_RULER_PREFERENCE_KEY, verticalRulerKey);
    }

    public void setVerticalRulerPreferenceValue(boolean verticalRulerValue) {
        this.setValue(VERTICAL_RULER_PREFERENCE_VALUE, verticalRulerValue);
    }

    public void setPresentationLayer(int presentationLayer) {
        this.setValue(PRESENTATION_LAYER, presentationLayer);
    }

    public void setTextPreferenceKey(String textKey) {
        this.setValue(TEXT_PREFERENCE_KEY, textKey);
    }

    public void setTextPreferenceValue(boolean textValue) {
        this.setValue(TEXT_PREFERENCE_VALUE, textValue);
    }

    public void setHighlightPreferenceKey(String highlightKey) {
        this.setValue(HIGHLIGHT_PREFERENCE_KEY, highlightKey);
    }

    public void setHighlightPreferenceValue(boolean highlightValue) {
        this.setValue(HIGHLIGHT_PREFERENCE_VALUE, highlightValue);
    }

    public void setContributesToHeader(boolean contributesToHeader) {
        this.setValue(HEADER_VALUE, contributesToHeader);
    }

    public boolean isGoToNextNavigationTarget() {
        return this.getBooleanValue(IS_GO_TO_NEXT_TARGET_VALUE);
    }

    public void setIsGoToNextNavigationTarget(boolean isGoToNextNavigationTarget) {
        this.setValue(IS_GO_TO_NEXT_TARGET_VALUE, isGoToNextNavigationTarget);
    }

    public String getIsGoToNextNavigationTargetKey() {
        return this.getStringValue(IS_GO_TO_NEXT_TARGET_KEY);
    }

    public void setIsGoToNextNavigationTargetKey(String isGoToNextNavigationTargetKey) {
        this.setValue(IS_GO_TO_NEXT_TARGET_KEY, isGoToNextNavigationTargetKey);
    }

    public boolean isGoToPreviousNavigationTarget() {
        return this.getBooleanValue(IS_GO_TO_PREVIOUS_TARGET_VALUE);
    }

    public void setIsGoToPreviousNavigationTarget(boolean isGoToPreviousNavigationTarget) {
        this.setValue(IS_GO_TO_PREVIOUS_TARGET_VALUE, isGoToPreviousNavigationTarget);
    }

    public String getIsGoToPreviousNavigationTargetKey() {
        return this.getStringValue(IS_GO_TO_PREVIOUS_TARGET_KEY);
    }

    public void setIsGoToPreviousNavigationTargetKey(String isGoToPreviousNavigationTargetKey) {
        this.setValue(IS_GO_TO_PREVIOUS_TARGET_KEY, isGoToPreviousNavigationTargetKey);
    }

    public String getShowInNextPrevDropdownToolbarActionKey() {
        return this.getStringValue(SHOW_IN_NAVIGATION_DROPDOWN_KEY);
    }

    public void setShowInNextPrevDropdownToolbarActionKey(String showInNextPrevDropdownToolbarActionKey) {
        this.setValue(SHOW_IN_NAVIGATION_DROPDOWN_KEY, showInNextPrevDropdownToolbarActionKey);
    }

    public boolean isShowInNextPrevDropdownToolbarAction() {
        return this.getBooleanValue(SHOW_IN_NAVIGATION_DROPDOWN_VALUE);
    }

    public void setShowInNextPrevDropdownToolbarAction(boolean showInNextPrevDropdownToolbarAction) {
        this.setValue(SHOW_IN_NAVIGATION_DROPDOWN_VALUE, showInNextPrevDropdownToolbarAction);
    }

    public void setTextStylePreferenceKey(String key) {
        this.setValue(TEXT_STYLE_PREFERENCE_KEY, key);
    }

    public String getTextStylePreferenceKey() {
        return this.getStringValue(TEXT_STYLE_PREFERENCE_KEY);
    }

    public String getTextStyleValue() {
        return this.getStringValue(TEXT_STYLE_PREFERENCE_VALUE);
    }

    public void setTextStyleValue(String value) {
        if (!(STYLE_NONE.equals(value) || STYLE_BOX.equals(value) || STYLE_DASHED_BOX.equals(value) || STYLE_IBEAM.equals(value) || STYLE_SQUIGGLES.equals(value) || STYLE_PROBLEM_UNDERLINE.equals(value) || STYLE_UNDERLINE.equals(value))) {
            throw new IllegalArgumentException();
        }
        this.setValue(TEXT_STYLE_PREFERENCE_VALUE, value);
    }

    public ImageDescriptor getImageDescriptor() {
        return (ImageDescriptor)this.getValue(IMAGE_DESCRIPTOR);
    }

    public void setImageDescriptor(ImageDescriptor descriptor) {
        this.setValue(IMAGE_DESCRIPTOR, descriptor);
    }

    public String getSymbolicImageName() {
        return this.getStringValue(SYMBOLIC_IMAGE_NAME);
    }

    public void setSymbolicImageName(String symbolicImageName) {
        this.setValue(SYMBOLIC_IMAGE_NAME, symbolicImageName);
    }

    public IAnnotationImageProvider getAnnotationImageProvider() {
        Bundle bundle;
        if (this.fAnnotationImageProvider == null && this.fConfigurationElement != null && this.fAnnotationImageProviderAttribute != null && (bundle = Platform.getBundle((String)this.fConfigurationElement.getContributor().getName())) != null && bundle.getState() == 32) {
            try {
                this.fAnnotationImageProvider = (IAnnotationImageProvider)this.fConfigurationElement.createExecutableExtension(this.fAnnotationImageProviderAttribute);
            }
            catch (CoreException x) {
                TextEditorPlugin.getDefault().getLog().log(x.getStatus());
            }
        }
        return this.fAnnotationImageProvider;
    }

    public void setAnnotationImageProvider(IAnnotationImageProvider provider) {
        this.fAnnotationImageProvider = provider;
        this.setValue(IMAGE_PROVIDER, provider != null);
    }

    public void setAnnotationImageProviderData(IConfigurationElement configurationElement, String annotationImageProviderAttribute) {
        this.fConfigurationElement = configurationElement;
        this.fAnnotationImageProviderAttribute = annotationImageProviderAttribute;
        this.setValue(IMAGE_PROVIDER, annotationImageProviderAttribute != null);
    }

    public void setIncludeOnPreferencePage(boolean includeOnPreferencePage) {
        this.setValue(INCLUDE_ON_PREFERENCE_PAGE, includeOnPreferencePage);
    }

    public boolean isIncludeOnPreferencePage() {
        Object value = this.fAttributes.get(INCLUDE_ON_PREFERENCE_PAGE);
        if (value instanceof Boolean) {
            return (Boolean)value;
        }
        return true;
    }

    public void merge(AnnotationPreference preference) {
        if (!this.getAnnotationType().equals(preference.getAnnotationType())) {
            return;
        }
        int i = 0;
        while (i < ATTRIBUTES.length) {
            if (!this.hasValue(ATTRIBUTES[i])) {
                this.setValue(ATTRIBUTES[i], preference.getValue(ATTRIBUTES[i]));
            }
            ++i;
        }
        if (this.fAnnotationImageProvider == null) {
            this.fAnnotationImageProvider = preference.fAnnotationImageProvider;
        }
        if (this.fConfigurationElement == null) {
            this.fConfigurationElement = preference.fConfigurationElement;
        }
        if (this.fAnnotationImageProviderAttribute == null) {
            this.fAnnotationImageProviderAttribute = preference.fAnnotationImageProviderAttribute;
        }
    }

    public void setQuickFixImageDescriptor(ImageDescriptor descriptor) {
        this.setValue(QUICK_FIX_IMAGE_DESCRIPTOR, descriptor);
    }

    public ImageDescriptor getQuickFixImageDescriptor() {
        return (ImageDescriptor)this.getValue(QUICK_FIX_IMAGE_DESCRIPTOR);
    }
}

