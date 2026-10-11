/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;

public interface IInformationControlCreatorExtension {
    public boolean canReuse(IInformationControl var1);

    public boolean canReplace(IInformationControlCreator var1);
}

