/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.mapping.ModelProvider
 */
package org.eclipse.team.core.mapping;

import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.team.core.mapping.ISynchronizationScope;
import org.eclipse.team.core.mapping.ISynchronizationScopeParticipant;

public interface ISynchronizationScopeParticipantFactory {
    public ISynchronizationScopeParticipant createParticipant(ModelProvider var1, ISynchronizationScope var2);
}

