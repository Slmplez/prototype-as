/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.p2.metadata.ITouchpointInstruction
 *  org.eclipse.equinox.p2.metadata.ITouchpointType
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.Assert;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.engine.ActionManager;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.internal.p2.engine.MissingAction;
import org.eclipse.equinox.internal.p2.engine.ParameterizedProvisioningAction;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.ITouchpointInstruction;
import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstructionParser {
    private static final String VERSION_EQUALS = "version=";
    private ActionManager actionManager;

    public InstructionParser(ActionManager actionManager) {
        Assert.isNotNull((Object)actionManager);
        this.actionManager = actionManager;
    }

    public List<ProvisioningAction> parseActions(ITouchpointInstruction instruction, ITouchpointType touchpointType) {
        ArrayList<ProvisioningAction> actions = new ArrayList<ProvisioningAction>();
        Map<String, ActionEntry> importMap = this.parseImportAttribute(instruction.getImportAttribute());
        StringTokenizer tokenizer = new StringTokenizer(instruction.getBody(), ";");
        while (tokenizer.hasMoreTokens()) {
            actions.add(this.parseAction(tokenizer.nextToken(), importMap, touchpointType));
        }
        return actions;
    }

    private Map<String, ActionEntry> parseImportAttribute(String importAttribute) {
        if (importAttribute == null) {
            return CollectionUtils.emptyMap();
        }
        HashMap<String, ActionEntry> result = new HashMap<String, ActionEntry>();
        StringTokenizer tokenizer = new StringTokenizer(importAttribute, ",");
        while (tokenizer.hasMoreTokens()) {
            StringTokenizer actionTokenizer = new StringTokenizer(tokenizer.nextToken(), ";");
            String actionId = actionTokenizer.nextToken().trim();
            int lastDot = actionId.lastIndexOf(46);
            String actionKey = lastDot == -1 ? actionId : actionId.substring(lastDot + 1);
            VersionRange actionVersionRange = null;
            while (actionTokenizer.hasMoreTokens()) {
                String actionAttribute = actionTokenizer.nextToken().trim();
                if (!actionAttribute.startsWith(VERSION_EQUALS)) continue;
                actionVersionRange = new VersionRange(actionAttribute.substring(VERSION_EQUALS.length() + 1));
            }
            result.put(actionKey, new ActionEntry(actionId, actionVersionRange));
            result.put(actionId, new ActionEntry(actionId, actionVersionRange));
        }
        return result;
    }

    private ProvisioningAction parseAction(String statement, Map<String, ActionEntry> qualifier, ITouchpointType touchpointType) {
        int openBracket = statement.indexOf(40);
        int closeBracket = statement.lastIndexOf(41);
        if (openBracket == -1 || closeBracket == -1 || openBracket > closeBracket) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.action_syntax_error, (Object)statement));
        }
        String actionName = statement.substring(0, openBracket).trim();
        ProvisioningAction action = this.lookupAction(actionName, qualifier, touchpointType);
        if (action instanceof MissingAction) {
            return action;
        }
        String nameValuePairs = statement.substring(openBracket + 1, closeBracket);
        if (nameValuePairs.length() == 0) {
            return new ParameterizedProvisioningAction(action, CollectionUtils.emptyMap(), statement);
        }
        StringTokenizer tokenizer = new StringTokenizer(nameValuePairs, ",");
        HashMap<String, String> parameters = new HashMap<String, String>();
        while (tokenizer.hasMoreTokens()) {
            String nameValuePair = tokenizer.nextToken();
            int colonIndex = nameValuePair.indexOf(":");
            if (colonIndex == -1) {
                throw new IllegalArgumentException(NLS.bind((String)Messages.action_syntax_error, (Object)statement));
            }
            String name = nameValuePair.substring(0, colonIndex).trim();
            String value = nameValuePair.substring(colonIndex + 1).trim();
            parameters.put(name, value);
        }
        return new ParameterizedProvisioningAction(action, parameters, statement);
    }

    private ProvisioningAction lookupAction(String actionId, Map<String, ActionEntry> importMap, ITouchpointType touchpointType) {
        ProvisioningAction action;
        VersionRange versionRange = null;
        ActionEntry actionEntry = importMap.get(actionId);
        if (actionEntry != null) {
            actionId = actionEntry.actionId;
            versionRange = actionEntry.versionRange;
        }
        if ((action = this.actionManager.getAction(actionId = this.actionManager.getTouchpointQualifiedActionId(actionId, touchpointType), versionRange)) == null) {
            action = new MissingAction(actionId, versionRange);
        }
        return action;
    }

    public class ActionEntry {
        protected final VersionRange versionRange;
        protected final String actionId;

        public ActionEntry(String actionId, VersionRange versionRange) {
            this.actionId = actionId;
            this.versionRange = versionRange;
        }
    }
}

