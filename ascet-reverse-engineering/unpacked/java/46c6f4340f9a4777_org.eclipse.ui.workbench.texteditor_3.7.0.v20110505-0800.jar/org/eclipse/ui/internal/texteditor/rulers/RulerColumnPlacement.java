/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 */
package org.eclipse.ui.internal.texteditor.rulers;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.ui.internal.texteditor.rulers.ExtensionPointHelper;
import org.eclipse.ui.internal.texteditor.rulers.RulerColumnMessages;
import org.eclipse.ui.internal.texteditor.rulers.RulerColumnPlacementConstraint;

public final class RulerColumnPlacement {
    private static final String ID = "id";
    private static final String GRAVITY = "gravity";
    private static final String BEFORE = "before";
    private static final String AFTER = "after";
    private final float fGravity;
    private final Set fConstraints;

    public RulerColumnPlacement() {
        this.fGravity = 1.0f;
        this.fConstraints = Collections.EMPTY_SET;
    }

    public RulerColumnPlacement(IConfigurationElement element) throws InvalidRegistryObjectException, CoreException {
        Assert.isLegal((element != null ? 1 : 0) != 0);
        ExtensionPointHelper helper = new ExtensionPointHelper(element);
        this.fGravity = helper.getDefaultAttribute(GRAVITY, 1.0f);
        if (this.fGravity < 0.0f || this.fGravity > 1.0f) {
            helper.fail(RulerColumnMessages.RulerColumnPlacement_illegal_gravity_msg);
        }
        this.fConstraints = this.readIds(element.getChildren());
    }

    /*
     * Unable to fully structure code
     */
    private Set readIds(IConfigurationElement[] children) throws CoreException {
        constraints = new LinkedHashSet<RulerColumnPlacementConstraint>((int)((double)children.length / 0.75) + 1, 0.75f);
        i = 0;
        while (i < children.length) {
            block3: {
                child = children[i];
                name = child.getName();
                childHelper = new ExtensionPointHelper(child);
                if (!"after".equals(name)) break block3;
                before = false;
                ** GOTO lbl15
            }
            if (!"before".equals(name)) {
                childHelper.fail(RulerColumnMessages.RulerColumnPlacement_illegal_child_msg);
            } else {
                before = true;
lbl15:
                // 2 sources

                constraints.add(new RulerColumnPlacementConstraint(childHelper.getNonNullAttribute("id"), before));
            }
            ++i;
        }
        return Collections.unmodifiableSet(constraints);
    }

    public float getGravity() {
        return this.fGravity;
    }

    public Set getConstraints() {
        return this.fConstraints;
    }
}

