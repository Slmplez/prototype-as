/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.preferences;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.preferences.WorkbenchPreferenceExpressionNode;
import org.eclipse.ui.internal.registry.KeywordRegistry;
import org.eclipse.ui.model.IComparableContribution;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public abstract class WorkbenchPreferenceExtensionNode
extends WorkbenchPreferenceExpressionNode
implements IComparableContribution {
    private Collection keywordReferences;
    private IConfigurationElement configurationElement;
    private ImageDescriptor imageDescriptor;
    private Image image;
    private Collection keywordLabelCache;
    private int priority;
    private String pluginId;
    static /* synthetic */ Class class$0;

    public WorkbenchPreferenceExtensionNode(String id, IConfigurationElement configurationElement) {
        super(id);
        this.configurationElement = configurationElement;
        this.pluginId = configurationElement.getNamespaceIdentifier();
    }

    public Collection getKeywordReferences() {
        if (this.keywordReferences == null) {
            IConfigurationElement[] references = this.getConfigurationElement().getChildren("keywordReference");
            HashSet<String> list = new HashSet<String>(references.length);
            int i = 0;
            while (i < references.length) {
                IConfigurationElement page = references[i];
                String id = page.getAttribute("id");
                if (id != null) {
                    list.add(id);
                }
                ++i;
            }
            this.keywordReferences = !list.isEmpty() ? list : Collections.EMPTY_SET;
        }
        return this.keywordReferences;
    }

    public Collection getKeywordLabels() {
        if (this.keywordLabelCache != null) {
            return this.keywordLabelCache;
        }
        Collection refs = this.getKeywordReferences();
        if (refs == Collections.EMPTY_SET) {
            this.keywordLabelCache = Collections.EMPTY_SET;
            return this.keywordLabelCache;
        }
        this.keywordLabelCache = new ArrayList(refs.size());
        Iterator referenceIterator = refs.iterator();
        while (referenceIterator.hasNext()) {
            String label = KeywordRegistry.getInstance().getKeywordLabel((String)referenceIterator.next());
            if (label == null) continue;
            this.keywordLabelCache.add(label);
        }
        return this.keywordLabelCache;
    }

    public void clearKeywords() {
        this.keywordLabelCache = null;
    }

    public void disposeResources() {
        if (this.image != null) {
            this.image.dispose();
            this.image = null;
        }
        super.disposeResources();
    }

    public Image getLabelImage() {
        ImageDescriptor desc;
        if (this.image == null && (desc = this.getImageDescriptor()) != null) {
            this.image = this.imageDescriptor.createImage();
        }
        return this.image;
    }

    public String getLabelText() {
        return this.getConfigurationElement().getAttribute("name");
    }

    public ImageDescriptor getImageDescriptor() {
        if (this.imageDescriptor != null) {
            return this.imageDescriptor;
        }
        String imageName = this.getConfigurationElement().getAttribute("icon");
        if (imageName != null) {
            String contributingPluginId = this.pluginId;
            this.imageDescriptor = AbstractUIPlugin.imageDescriptorFromPlugin(contributingPluginId, imageName);
        }
        return this.imageDescriptor;
    }

    public IConfigurationElement getConfigurationElement() {
        return this.configurationElement;
    }

    public String getLocalId() {
        return this.getId();
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.IConfigurationElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this.getConfigurationElement();
        }
        return null;
    }

    public String getLabel() {
        return this.getLabelText();
    }

    public int getPriority() {
        return this.priority;
    }

    public void setPriority(int pri) {
        this.priority = pri;
    }
}

