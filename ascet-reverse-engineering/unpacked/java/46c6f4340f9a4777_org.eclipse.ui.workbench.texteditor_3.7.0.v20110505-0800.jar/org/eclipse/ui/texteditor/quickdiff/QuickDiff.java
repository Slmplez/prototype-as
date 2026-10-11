/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.ui.texteditor.quickdiff;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.internal.texteditor.quickdiff.DocumentLineDiffer;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffExtensionsRegistry;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.quickdiff.IQuickDiffReferenceProvider;
import org.eclipse.ui.texteditor.quickdiff.ReferenceProviderDescriptor;

public class QuickDiff {
    public ReferenceProviderDescriptor getDefaultProvider() {
        QuickDiffExtensionsRegistry registry = TextEditorPlugin.getDefault().getQuickDiffExtensionRegistry();
        if (registry != null) {
            return registry.getDefaultProvider();
        }
        return null;
    }

    public List getReferenceProviderDescriptors() {
        QuickDiffExtensionsRegistry registry = TextEditorPlugin.getDefault().getQuickDiffExtensionRegistry();
        if (registry != null) {
            return registry.getReferenceProviderDescriptors();
        }
        return Collections.EMPTY_LIST;
    }

    public IQuickDiffReferenceProvider getReferenceProviderOrDefault(ITextEditor editor, String id) {
        IQuickDiffReferenceProvider provider;
        ReferenceProviderDescriptor desc;
        Assert.isNotNull((Object)editor);
        Assert.isNotNull((Object)id);
        List descs = this.getReferenceProviderDescriptors();
        Iterator iter = descs.iterator();
        while (iter.hasNext()) {
            desc = (ReferenceProviderDescriptor)iter.next();
            if (!desc.getId().equals(id) || (provider = desc.createProvider()) == null) continue;
            provider.setActiveEditor(editor);
            if (provider.isEnabled()) {
                return provider;
            }
            provider.dispose();
            provider = null;
        }
        iter = descs.listIterator(descs.size());
        while (iter.hasPrevious()) {
            desc = (ReferenceProviderDescriptor)iter.previous();
            provider = desc.createProvider();
            if (provider == null) continue;
            provider.setActiveEditor(editor);
            if (provider.isEnabled()) {
                return provider;
            }
            provider.dispose();
            provider = null;
        }
        return null;
    }

    public IAnnotationModel createQuickDiffAnnotationModel(ITextEditor editor, String id) {
        IQuickDiffReferenceProvider provider = this.getReferenceProviderOrDefault(editor, id);
        if (provider != null) {
            DocumentLineDiffer differ = new DocumentLineDiffer();
            differ.setReferenceProvider(provider);
            return differ;
        }
        return null;
    }

    public Object getConfiguredQuickDiffProvider(IAnnotationModel differ) {
        DocumentLineDiffer lineDiffer;
        IQuickDiffReferenceProvider provider;
        if (differ instanceof DocumentLineDiffer && (provider = (lineDiffer = (DocumentLineDiffer)differ).getReferenceProvider()) != null) {
            return provider.getId();
        }
        return "";
    }
}

