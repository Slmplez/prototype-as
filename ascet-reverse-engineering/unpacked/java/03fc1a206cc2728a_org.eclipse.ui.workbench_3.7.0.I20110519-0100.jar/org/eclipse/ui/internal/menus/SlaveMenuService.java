/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.IContributionItem
 */
package org.eclipse.ui.internal.menus;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.internal.menus.InternalMenuService;
import org.eclipse.ui.internal.menus.MenuLocationURI;
import org.eclipse.ui.menus.AbstractContributionFactory;
import org.eclipse.ui.services.IServiceLocator;

public final class SlaveMenuService
extends InternalMenuService {
    private Collection providers = new ArrayList();
    private Collection factories = new ArrayList();
    private final InternalMenuService parent;
    private IServiceLocator serviceLocator;
    private Set restrictionExpression;

    public SlaveMenuService(InternalMenuService parent, IServiceLocator serviceLocator, Set restrictions) {
        this.restrictionExpression = restrictions;
        this.parent = parent;
        this.serviceLocator = serviceLocator;
    }

    public void populateContributionManager(ContributionManager mgr, String uri) {
        this.parent.populateContributionManager(this.serviceLocator, this.restrictionExpression, mgr, uri, true);
    }

    public void populateContributionManager(ContributionManager mgr, String uri, boolean recurse) {
        this.parent.populateContributionManager(this.serviceLocator, this.restrictionExpression, mgr, uri, recurse);
    }

    public IEvaluationContext getCurrentState() {
        return this.parent.getCurrentState();
    }

    public void addContributionFactory(AbstractContributionFactory cache) {
        if (!this.factories.contains(cache)) {
            this.factories.add(cache);
        }
        this.parent.addContributionFactory(cache);
    }

    public void releaseContributions(ContributionManager mgr) {
        this.parent.releaseContributions(mgr);
    }

    public void removeContributionFactory(AbstractContributionFactory factory) {
        this.factories.remove(factory);
        this.parent.removeContributionFactory(factory);
    }

    public void dispose() {
        int i;
        Object[] array;
        if (!this.providers.isEmpty()) {
            array = this.providers.toArray();
            i = 0;
            while (i < array.length) {
                this.parent.removeSourceProvider((ISourceProvider)array[i]);
                ++i;
            }
            this.providers.clear();
        }
        if (!this.factories.isEmpty()) {
            array = this.factories.toArray();
            i = 0;
            while (i < array.length) {
                this.parent.removeContributionFactory((AbstractContributionFactory)array[i]);
                ++i;
            }
            this.factories.clear();
        }
        this.restrictionExpression = null;
        this.serviceLocator = null;
    }

    public void addSourceProvider(ISourceProvider provider) {
        if (!this.providers.contains(provider)) {
            this.providers.add(provider);
        }
        this.parent.addSourceProvider(provider);
    }

    public void removeSourceProvider(ISourceProvider provider) {
        this.providers.remove(provider);
        this.parent.removeSourceProvider(provider);
    }

    public List getAdditionsForURI(MenuLocationURI uri) {
        return this.parent.getAdditionsForURI(uri);
    }

    public void registerVisibleWhen(IContributionItem item, Expression visibleWhen, Set restriction, String identifierID) {
        this.parent.registerVisibleWhen(item, visibleWhen, restriction, identifierID);
    }

    public void unregisterVisibleWhen(IContributionItem item, Set restriction) {
        this.parent.unregisterVisibleWhen(item, restriction);
    }

    public void populateContributionManager(IServiceLocator serviceLocatorToUse, Set restriction, ContributionManager mgr, String uri, boolean recurse) {
        this.parent.populateContributionManager(serviceLocatorToUse, restriction, mgr, uri, recurse);
    }
}

