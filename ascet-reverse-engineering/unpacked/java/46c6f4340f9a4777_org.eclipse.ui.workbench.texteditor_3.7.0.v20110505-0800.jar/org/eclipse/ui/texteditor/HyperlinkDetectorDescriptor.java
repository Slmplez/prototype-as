/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.text.hyperlink.AbstractHyperlinkDetector
 *  org.eclipse.jface.util.SafeRunnable
 */
package org.eclipse.ui.texteditor;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.text.hyperlink.AbstractHyperlinkDetector;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.ui.internal.texteditor.NLSUtility;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.HyperlinkDetectorTargetDescriptor;

public final class HyperlinkDetectorDescriptor {
    public static final String STATE_MASK_POSTFIX = "_stateMask";
    private static final String HYPERLINK_DETECTORS_EXTENSION_POINT = "org.eclipse.ui.workbench.texteditor.hyperlinkDetectors";
    private static final String HYPERLINK_DETECTOR_ELEMENT = "hyperlinkDetector";
    private static final String ID_ATTRIBUTE = "id";
    private static final String NAME_ATTRIBUTE = "name";
    private static final String DESCRIPTION_ATTRIBUTE = "description";
    private static final String TARGET_ID_ATTRIBUTE = "targetId";
    private static final String CLASS_ATTRIBUTE = "class";
    private static final String ACTIVATE_PLUG_IN_ATTRIBUTE = "activate";
    private static final String MODIFIER_KEYS = "modifierKeys";
    private IConfigurationElement fElement;
    private HyperlinkDetectorTargetDescriptor fTarget;

    public static HyperlinkDetectorDescriptor[] getContributedHyperlinkDetectors() {
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IConfigurationElement[] elements = registry.getConfigurationElementsFor(HYPERLINK_DETECTORS_EXTENSION_POINT);
        HyperlinkDetectorDescriptor[] hyperlinkDetectorDescs = HyperlinkDetectorDescriptor.createDescriptors(elements);
        return hyperlinkDetectorDescs;
    }

    private HyperlinkDetectorDescriptor(IConfigurationElement element) {
        Assert.isNotNull((Object)element);
        this.fElement = element;
    }

    public AbstractHyperlinkDetector createHyperlinkDetector() throws CoreException {
        final Throwable[] exception = new Throwable[1];
        final AbstractHyperlinkDetector[] result = new AbstractHyperlinkDetector[1];
        String message = NLSUtility.format(EditorMessages.Editor_error_HyperlinkDetector_couldNotCreate_message, new String[]{this.getId(), this.fElement.getContributor().getName()});
        SafeRunnable code = new SafeRunnable(message){

            public void run() throws Exception {
                boolean isPlugInActivated;
                String pluginId = HyperlinkDetectorDescriptor.this.fElement.getContributor().getName();
                boolean bl = isPlugInActivated = Platform.getBundle((String)pluginId).getState() == 32;
                if (isPlugInActivated || HyperlinkDetectorDescriptor.this.canActivatePlugIn()) {
                    result[0] = (AbstractHyperlinkDetector)HyperlinkDetectorDescriptor.this.fElement.createExecutableExtension(HyperlinkDetectorDescriptor.CLASS_ATTRIBUTE);
                }
            }

            public void handleException(Throwable ex) {
                super.handleException(ex);
                exception[0] = ex;
            }
        };
        SafeRunner.run((ISafeRunnable)code);
        if (exception[0] == null) {
            return result[0];
        }
        throw new CoreException((IStatus)new Status(4, "org.eclipse.ui.workbench.texteditor", 0, message, exception[0]));
    }

    private boolean isValid(HyperlinkDetectorTargetDescriptor[] targets) {
        if (this.getId() == null || this.getName() == null || this.getTargetId() == null) {
            return false;
        }
        String targetId = this.getTargetId();
        int i = 0;
        while (i < targets.length) {
            if (targetId.equals(targets[i].getId())) {
                this.fTarget = targets[i];
                return true;
            }
            ++i;
        }
        return false;
    }

    public String getId() {
        return this.fElement.getAttribute(ID_ATTRIBUTE);
    }

    public String getName() {
        return this.fElement.getAttribute(NAME_ATTRIBUTE);
    }

    public HyperlinkDetectorTargetDescriptor getTarget() {
        return this.fTarget;
    }

    public String getTargetId() {
        return this.fElement.getAttribute(TARGET_ID_ATTRIBUTE);
    }

    public String getDescription() {
        return this.fElement.getAttribute(DESCRIPTION_ATTRIBUTE);
    }

    public String getModifierKeys() {
        return this.fElement.getAttribute(MODIFIER_KEYS);
    }

    public boolean canActivatePlugIn() {
        String value = this.fElement.getAttribute(ACTIVATE_PLUG_IN_ATTRIBUTE);
        if (value == null) {
            return true;
        }
        return Boolean.valueOf(value);
    }

    public boolean equals(Object obj) {
        if (obj == null || !obj.getClass().equals(this.getClass()) || this.getId() == null) {
            return false;
        }
        return this.getId().equals(((HyperlinkDetectorDescriptor)obj).getId());
    }

    public int hashCode() {
        return this.getId().hashCode();
    }

    private static HyperlinkDetectorDescriptor[] createDescriptors(IConfigurationElement[] elements) {
        HyperlinkDetectorTargetDescriptor[] targets = HyperlinkDetectorTargetDescriptor.getContributedHyperlinkDetectorTargets();
        ArrayList<HyperlinkDetectorDescriptor> result = new ArrayList<HyperlinkDetectorDescriptor>(elements.length);
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            if (HYPERLINK_DETECTOR_ELEMENT.equals(element.getName())) {
                HyperlinkDetectorDescriptor desc = new HyperlinkDetectorDescriptor(element);
                if (desc.isValid(targets)) {
                    result.add(desc);
                } else {
                    String message = NLSUtility.format(EditorMessages.Editor_error_HyperlinkDetector_invalidExtension_message, new String[]{desc.getId(), element.getContributor().getName()});
                    TextEditorPlugin.getDefault().getLog().log((IStatus)new Status(4, "org.eclipse.ui.workbench.texteditor", 0, message, null));
                }
            } else {
                String message = NLSUtility.format(EditorMessages.Editor_error_HyperlinkDetector_invalidElementName_message, new String[]{element.getContributor().getName(), element.getName()});
                TextEditorPlugin.getDefault().getLog().log((IStatus)new Status(4, "org.eclipse.ui.workbench.texteditor", 0, message, null));
            }
            ++i;
        }
        return result.toArray(new HyperlinkDetectorDescriptor[result.size()]);
    }
}

