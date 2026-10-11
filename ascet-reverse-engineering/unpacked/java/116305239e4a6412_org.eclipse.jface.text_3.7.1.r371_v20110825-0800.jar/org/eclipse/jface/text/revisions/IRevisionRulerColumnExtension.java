/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.viewers.ISelectionProvider
 */
package org.eclipse.jface.text.revisions;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.revisions.IRevisionListener;
import org.eclipse.jface.viewers.ISelectionProvider;

public interface IRevisionRulerColumnExtension {
    public static final RenderingMode AUTHOR = new RenderingMode("Author");
    public static final RenderingMode AGE = new RenderingMode("Age");
    public static final RenderingMode AUTHOR_SHADED_BY_AGE = new RenderingMode("Both");

    public void setRevisionRenderingMode(RenderingMode var1);

    public void showRevisionId(boolean var1);

    public void showRevisionAuthor(boolean var1);

    public ISelectionProvider getRevisionSelectionProvider();

    public void addRevisionListener(IRevisionListener var1);

    public void removeRevisionListener(IRevisionListener var1);

    public static final class RenderingMode {
        private final String fName;

        private RenderingMode(String name) {
            Assert.isLegal((name != null ? 1 : 0) != 0);
            this.fName = name;
        }

        public String name() {
            return this.fName;
        }
    }
}

