/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.content.IContentType
 */
package org.eclipse.ui.internal.texteditor.rulers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.ui.internal.texteditor.rulers.AllTarget;
import org.eclipse.ui.internal.texteditor.rulers.ClassTarget;
import org.eclipse.ui.internal.texteditor.rulers.ContentTypeTarget;
import org.eclipse.ui.internal.texteditor.rulers.EditorIdTarget;
import org.eclipse.ui.internal.texteditor.rulers.OrTarget;

public abstract class RulerColumnTarget {
    public abstract boolean matchesEditorId(String var1);

    public abstract boolean matchesContentType(IContentType var1);

    public abstract boolean matchesClass(Class var1);

    RulerColumnTarget() {
    }

    public static RulerColumnTarget createAllTarget() {
        return new AllTarget();
    }

    public static RulerColumnTarget createOrTarget(RulerColumnTarget either, RulerColumnTarget or) {
        Assert.isLegal((or != null || either != null ? 1 : 0) != 0);
        if (either == null) {
            return or;
        }
        if (or == null) {
            return either;
        }
        return new OrTarget(either, or);
    }

    public static RulerColumnTarget createContentTypeTarget(String contentTypeId) {
        return new ContentTypeTarget(contentTypeId);
    }

    public static RulerColumnTarget createEditorIdTarget(String editorId) {
        return new EditorIdTarget(editorId);
    }

    public static RulerColumnTarget createClassTarget(String className) {
        return new ClassTarget(className);
    }
}

