/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.ui.texteditor;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.internal.texteditor.NLSUtility;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.texteditor.EditorMessages;

public final class HyperlinkDetectorTargetDescriptor {
    private static final String HYPERLINK_DETECTOR_TARGETS_EXTENSION_POINT = "org.eclipse.ui.workbench.texteditor.hyperlinkDetectorTargets";
    private static final String TARGET_ELEMENT = "target";
    private static final String ID_ATTRIBUTE = "id";
    private static final String NAME_ATTRIBUTE = "name";
    private static final String DESCRIPTION_ATTRIBUTE = "description";
    private static final String CONTEXT_ELEMENT = "context";
    private static final String TYPE_ATTRIBUTE = "type";
    private IConfigurationElement fElement;

    public static HyperlinkDetectorTargetDescriptor[] getContributedHyperlinkDetectorTargets() {
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IConfigurationElement[] elements = registry.getConfigurationElementsFor(HYPERLINK_DETECTOR_TARGETS_EXTENSION_POINT);
        HyperlinkDetectorTargetDescriptor[] hyperlinkDetectorDescs = HyperlinkDetectorTargetDescriptor.createDescriptors(elements);
        return hyperlinkDetectorDescs;
    }

    private HyperlinkDetectorTargetDescriptor(IConfigurationElement element) {
        Assert.isNotNull((Object)element);
        this.fElement = element;
    }

    public String getId() {
        return this.fElement.getAttribute(ID_ATTRIBUTE);
    }

    public String getName() {
        return this.fElement.getAttribute(NAME_ATTRIBUTE);
    }

    public String[] getTypes() {
        IConfigurationElement[] contexts = this.fElement.getChildren(CONTEXT_ELEMENT);
        String[] types = new String[contexts.length];
        int i = 0;
        while (i < contexts.length) {
            types[i] = contexts[i].getAttribute(TYPE_ATTRIBUTE);
            ++i;
        }
        return types;
    }

    public String getDescription() {
        return this.fElement.getAttribute(DESCRIPTION_ATTRIBUTE);
    }

    public boolean equals(Object obj) {
        if (obj == null || !obj.getClass().equals(this.getClass()) || this.getId() == null) {
            return false;
        }
        return this.getId().equals(((HyperlinkDetectorTargetDescriptor)obj).getId());
    }

    public int hashCode() {
        return this.getId().hashCode();
    }

    private static HyperlinkDetectorTargetDescriptor[] createDescriptors(IConfigurationElement[] elements) {
        ArrayList<HyperlinkDetectorTargetDescriptor> result = new ArrayList<HyperlinkDetectorTargetDescriptor>(elements.length);
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            if (TARGET_ELEMENT.equals(element.getName())) {
                HyperlinkDetectorTargetDescriptor desc = new HyperlinkDetectorTargetDescriptor(element);
                if (desc.isValid()) {
                    result.add(desc);
                } else {
                    String message = NLSUtility.format(EditorMessages.Editor_error_HyperlinkDetectorTarget_invalidExtension_message, new String[]{desc.getId(), element.getContributor().getName()});
                    TextEditorPlugin.getDefault().getLog().log((IStatus)new Status(4, "org.eclipse.ui.workbench.texteditor", 0, message, null));
                }
            } else {
                String message = NLSUtility.format(EditorMessages.Editor_error_HyperlinkDetectorTarget_invalidElementName_message, new String[]{element.getContributor().getName(), element.getName()});
                TextEditorPlugin.getDefault().getLog().log((IStatus)new Status(4, "org.eclipse.ui.workbench.texteditor", 0, message, null));
            }
            ++i;
        }
        return result.toArray(new HyperlinkDetectorTargetDescriptor[result.size()]);
    }

    private boolean isValid() {
        return this.getId() != null && this.getName() != null;
    }
}

