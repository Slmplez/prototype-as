/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.app.IApplication
 *  org.eclipse.equinox.app.IApplicationContext
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.StringHelper
 *  org.eclipse.equinox.internal.p2.director.ProfileChangeRequest
 *  org.eclipse.equinox.internal.provisional.p2.director.IDirector
 *  org.eclipse.equinox.internal.provisional.p2.director.PlanExecutionHelper
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.IProvisioningAgentProvider
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.core.UIServices
 *  org.eclipse.equinox.p2.core.UIServices$AuthenticationInfo
 *  org.eclipse.equinox.p2.core.UIServices$TrustInfo
 *  org.eclipse.equinox.p2.engine.IEngine
 *  org.eclipse.equinox.p2.engine.IPhaseSet
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.IProfileRegistry
 *  org.eclipse.equinox.p2.engine.IProvisioningPlan
 *  org.eclipse.equinox.p2.engine.PhaseSetFactory
 *  org.eclipse.equinox.p2.engine.ProvisioningContext
 *  org.eclipse.equinox.p2.engine.query.UserVisibleRootQuery
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.metadata.VersionedId
 *  org.eclipse.equinox.p2.planner.IPlanner
 *  org.eclipse.equinox.p2.planner.IProfileChangeRequest
 *  org.eclipse.equinox.p2.query.Collector
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.service.environment.EnvironmentInfo
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 *  org.osgi.service.packageadmin.PackageAdmin
 */
package org.eclipse.equinox.internal.p2.director.app;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.TreeSet;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.core.helpers.StringHelper;
import org.eclipse.equinox.internal.p2.director.ProfileChangeRequest;
import org.eclipse.equinox.internal.p2.director.app.Activator;
import org.eclipse.equinox.internal.p2.director.app.ILog;
import org.eclipse.equinox.internal.p2.director.app.Messages;
import org.eclipse.equinox.internal.p2.director.app.PrettyQuery;
import org.eclipse.equinox.internal.provisional.p2.director.IDirector;
import org.eclipse.equinox.internal.provisional.p2.director.PlanExecutionHelper;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.IProvisioningAgentProvider;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.core.UIServices;
import org.eclipse.equinox.p2.engine.IEngine;
import org.eclipse.equinox.p2.engine.IPhaseSet;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.p2.engine.IProvisioningPlan;
import org.eclipse.equinox.p2.engine.PhaseSetFactory;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.engine.query.UserVisibleRootQuery;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.VersionedId;
import org.eclipse.equinox.p2.planner.IPlanner;
import org.eclipse.equinox.p2.planner.IProfileChangeRequest;
import org.eclipse.equinox.p2.query.Collector;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.service.environment.EnvironmentInfo;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.service.packageadmin.PackageAdmin;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DirectorApplication
implements IApplication {
    private static final CommandLineOption OPTION_HELP = new CommandLineOption(new String[]{"-help", "-h", "-?"}, null, Messages.Help_Prints_this_command_line_help);
    private static final CommandLineOption OPTION_LIST = new CommandLineOption(new String[]{"-list", "-l"}, Messages.Help_lb_lt_comma_separated_list_gt_rb, Messages.Help_List_all_IUs_found_in_repos);
    private static final CommandLineOption OPTION_LIST_INSTALLED = new CommandLineOption(new String[]{"-listInstalledRoots", "-lir"}, null, Messages.Help_List_installed_roots);
    private static final CommandLineOption OPTION_INSTALL_IU = new CommandLineOption(new String[]{"-installIU", "-installIUs", "-i"}, Messages.Help_lt_comma_separated_list_gt, Messages.Help_Installs_the_listed_IUs);
    private static final CommandLineOption OPTION_UNINSTALL_IU = new CommandLineOption(new String[]{"-uninstallIU", "-uninstallIUs", "-u"}, Messages.Help_lt_comma_separated_list_gt, Messages.Help_Uninstalls_the_listed_IUs);
    private static final CommandLineOption OPTION_REVERT = new CommandLineOption(new String[]{"-revert"}, Messages.Help_lt_comma_separated_list_gt, Messages.Help_Revert_to_previous_state);
    private static final CommandLineOption OPTION_DESTINATION = new CommandLineOption(new String[]{"-destination", "-d"}, Messages.Help_lt_path_gt, Messages.Help_The_folder_in_which_the_targetd_product_is_located);
    private static final CommandLineOption OPTION_METADATAREPOS = new CommandLineOption(new String[]{"-metadatarepository", "metadatarepositories", "-m"}, Messages.Help_lt_comma_separated_list_gt, Messages.Help_A_list_of_URLs_denoting_metadata_repositories);
    private static final CommandLineOption OPTION_ARTIFACTREPOS = new CommandLineOption(new String[]{"-artifactrepository", "artifactrepositories", "-a"}, Messages.Help_lt_comma_separated_list_gt, Messages.Help_A_list_of_URLs_denoting_artifact_repositories);
    private static final CommandLineOption OPTION_REPOSITORIES = new CommandLineOption(new String[]{"-repository", "repositories", "-r"}, Messages.Help_lt_comma_separated_list_gt, Messages.Help_A_list_of_URLs_denoting_colocated_repositories);
    private static final CommandLineOption OPTION_VERIFY_ONLY = new CommandLineOption(new String[]{"-verifyOnly"}, null, Messages.Help_Only_verify_dont_install);
    private static final CommandLineOption OPTION_PROFILE = new CommandLineOption(new String[]{"-profile", "-p"}, Messages.Help_lt_name_gt, Messages.Help_Defines_what_profile_to_use_for_the_actions);
    private static final CommandLineOption OPTION_FLAVOR = new CommandLineOption(new String[]{"-flavor", "-f"}, Messages.Help_lt_name_gt, Messages.Help_Defines_flavor_to_use_for_created_profile);
    private static final CommandLineOption OPTION_SHARED = new CommandLineOption(new String[]{"-shared", "-s"}, Messages.Help_lb_lt_path_gt_rb, Messages.Help_Use_a_shared_location_for_the_install);
    private static final CommandLineOption OPTION_BUNDLEPOOL = new CommandLineOption(new String[]{"-bundlepool", "-b"}, Messages.Help_lt_path_gt, Messages.Help_The_location_where_the_plugins_and_features_will_be_stored);
    private static final CommandLineOption OPTION_IU_PROFILE_PROPS = new CommandLineOption(new String[]{"-iuProfileproperties"}, Messages.Help_lt_path_gt, Messages.Help_path_to_IU_profile_properties_file);
    private static final CommandLineOption OPTION_PROFILE_PROPS = new CommandLineOption(new String[]{"-profileproperties"}, Messages.Help_lt_comma_separated_list_gt, Messages.Help_A_list_of_properties_in_the_form_key_value_pairs);
    private static final CommandLineOption OPTION_ROAMING = new CommandLineOption(new String[]{"-roaming"}, null, Messages.Help_Indicates_that_the_product_can_be_moved);
    private static final CommandLineOption OPTION_P2_OS = new CommandLineOption(new String[]{"-p2.os"}, null, Messages.Help_The_OS_when_profile_is_created);
    private static final CommandLineOption OPTION_P2_WS = new CommandLineOption(new String[]{"-p2.ws"}, null, Messages.Help_The_WS_when_profile_is_created);
    private static final CommandLineOption OPTION_P2_ARCH = new CommandLineOption(new String[]{"-p2.arch"}, null, Messages.Help_The_ARCH_when_profile_is_created);
    private static final CommandLineOption OPTION_P2_NL = new CommandLineOption(new String[]{"-p2.nl"}, null, Messages.Help_The_NL_when_profile_is_created);
    private static final CommandLineOption OPTION_PURGEHISTORY = new CommandLineOption(new String[]{"-purgeHistory"}, null, Messages.Help_Purge_the_install_registry);
    private static final CommandLineOption OPTION_FOLLOW_REFERENCES = new CommandLineOption(new String[]{"-followReferences"}, null, Messages.Help_Follow_references);
    private static final CommandLineOption OPTION_TAG = new CommandLineOption(new String[]{"-tag"}, Messages.Help_lt_name_gt, Messages.Help_Defines_a_tag_for_provisioning_session);
    private static final CommandLineOption OPTION_LIST_TAGS = new CommandLineOption(new String[]{"-listTags"}, null, Messages.Help_List_Tags);
    private static final CommandLineOption OPTION_DOWNLOAD_ONLY = new CommandLineOption(new String[]{"-downloadOnly"}, null, Messages.Help_Download_Only);
    private static final CommandLineOption OPTION_IGNORED = new CommandLineOption(new String[]{"-showLocation", "-eclipse.password", "-eclipse.keyring"}, null, "");
    private static final Integer EXIT_ERROR = new Integer(13);
    private static final String FLAVOR_DEFAULT = "tooling";
    private static final String PROP_P2_PROFILE = "eclipse.p2.profile";
    private static final String NO_ARTIFACT_REPOSITORIES_AVAILABLE = "noArtifactRepositoriesAvailable";
    private static final String FOLLOW_ARTIFACT_REPOSITORY_REFERENCES = "org.eclipse.equinox.p2.director.followArtifactRepositoryReferences";
    private static final String LIST_GROUPS_SHORTCUT = "Q:GROUP";
    private static final String QUERY_SEPARATOR = "Q:";
    private static final String QUERY_SEPARATOR_SMALL = "q:";
    public static final String LINE_SEPARATOR = System.getProperty("line.separator");
    private IArtifactRepositoryManager artifactManager;
    IMetadataRepositoryManager metadataManager;
    private URI[] artifactReposForRemoval;
    private URI[] metadataReposForRemoval;
    private final List<URI> artifactRepositoryLocations = new ArrayList<URI>();
    private final List<URI> metadataRepositoryLocations = new ArrayList<URI>();
    private final List<IQuery<IInstallableUnit>> rootsToInstall = new ArrayList<IQuery<IInstallableUnit>>();
    private final List<IQuery<IInstallableUnit>> rootsToUninstall = new ArrayList<IQuery<IInstallableUnit>>();
    private final List<IQuery<IInstallableUnit>> rootsToList = new ArrayList<IQuery<IInstallableUnit>>();
    private File bundlePool = null;
    private File destination;
    private File sharedLocation;
    private String flavor;
    private boolean printHelpInfo = false;
    private boolean printIUList = false;
    private boolean printRootIUList = false;
    private boolean printTags = false;
    private String revertToPreviousState = NOTHING_TO_REVERT_TO;
    private static String NOTHING_TO_REVERT_TO = "-1";
    private static String REVERT_TO_PREVIOUS = "0";
    private boolean verifyOnly = false;
    private boolean roamingProfile = false;
    private boolean purgeRegistry = false;
    private boolean stackTrace = false;
    private boolean followReferences = false;
    private boolean downloadOnly = false;
    private String profileId;
    private String profileProperties;
    private String iuProfileProperties;
    private String ws;
    private String os;
    private String arch;
    private String nl;
    private String tag;
    private IEngine engine;
    private boolean noProfileId = false;
    private PackageAdmin packageAdmin;
    private ServiceReference<PackageAdmin> packageAdminRef;
    private IPlanner planner;
    private ILog log = null;
    private IProvisioningAgent targetAgent;
    private boolean noArtifactRepositorySpecified = false;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    private static void getURIs(List<URI> uris, String spec) throws CoreException {
        if (spec == null) {
            return;
        }
        String[] urlSpecs = StringHelper.getArrayFromString((String)spec, (char)',');
        int i = 0;
        while (i < urlSpecs.length) {
            try {
                uris.add(new URI(urlSpecs[i]));
            }
            catch (URISyntaxException uRISyntaxException) {
                try {
                    uris.add(URIUtil.fromString((String)urlSpecs[i]));
                }
                catch (URISyntaxException e) {
                    throw new ProvisionException(NLS.bind((String)Messages.unable_to_parse_0_to_uri_1, (Object)urlSpecs[i], (Object)e.getMessage()));
                }
            }
            ++i;
        }
    }

    private static String getRequiredArgument(String[] args, int argIdx) throws CoreException {
        String arg;
        if (argIdx < args.length && !(arg = args[argIdx]).startsWith("-")) {
            return arg;
        }
        throw new ProvisionException(NLS.bind((String)Messages.option_0_requires_an_argument, (Object)args[argIdx - 1]));
    }

    private static String getOptionalArgument(String[] args, int argIdx) {
        String arg;
        if (++argIdx < args.length && !(arg = args[argIdx]).startsWith("-")) {
            return arg;
        }
        return null;
    }

    private static void parseIUsArgument(List<IQuery<IInstallableUnit>> vnames, String arg) {
        String[] roots = StringHelper.getArrayFromString((String)arg, (char)',');
        int i = 0;
        while (i < roots.length) {
            if (roots[i].equalsIgnoreCase(LIST_GROUPS_SHORTCUT)) {
                vnames.add(new PrettyQuery(QueryUtil.createIUGroupQuery(), "All groups"));
            } else if (roots[i].startsWith(QUERY_SEPARATOR) || roots[i].startsWith(QUERY_SEPARATOR_SMALL)) {
                String queryString = roots[i].substring(2);
                vnames.add(new PrettyQuery(QueryUtil.createQuery((String)queryString, (Object[])new Object[0]), queryString));
            } else {
                IVersionedId vId = VersionedId.parse((String)roots[i]);
                Version v = vId.getVersion();
                PrettyQuery query = new PrettyQuery(QueryUtil.createIUQuery((String)vId.getId(), (VersionRange)(Version.emptyVersion.equals(v) ? VersionRange.emptyRange : new VersionRange(v, true, v, true))), roots[i]);
                vnames.add(query);
            }
            ++i;
        }
    }

    private static File processFileArgument(String arg) {
        if (arg.startsWith("file:")) {
            arg = arg.substring(5);
        }
        return Path.fromOSString((String)arg).toFile();
    }

    private ProfileChangeRequest buildProvisioningRequest(IProfile profile, Collection<IInstallableUnit> installs, Collection<IInstallableUnit> uninstalls) {
        ProfileChangeRequest request = new ProfileChangeRequest(profile);
        this.markRoots((IProfileChangeRequest)request, installs);
        this.markRoots((IProfileChangeRequest)request, uninstalls);
        request.addAll(installs);
        request.removeAll(uninstalls);
        this.buildIUProfileProperties((IProfileChangeRequest)request);
        return request;
    }

    private Properties loadProperties(File file) {
        if (!file.exists()) {
            this.logStatus((IStatus)new Status(2, "org.eclipse.equinox.p2.director.app", NLS.bind((String)Messages.File_does_not_exist, (Object)file.getAbsolutePath())));
            return null;
        }
        Properties properties = new Properties();
        InputStream input = null;
        try {
            try {
                input = new BufferedInputStream(new FileInputStream(file));
                properties.load(input);
            }
            catch (IOException e) {
                this.logFailure((IStatus)new Status(4, "org.eclipse.equinox.p2.director.app", NLS.bind((String)Messages.Problem_loading_file, (Object)file.getAbsolutePath()), (Throwable)e));
                if (input != null) {
                    try {
                        input.close();
                    }
                    catch (IOException iOException) {}
                }
                return null;
            }
        }
        catch (Throwable throwable) {
            if (input != null) {
                try {
                    input.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (input != null) {
            try {
                input.close();
            }
            catch (IOException iOException) {}
        }
        return properties;
    }

    private void buildIUProfileProperties(IProfileChangeRequest request) {
        if (this.iuProfileProperties == null) {
            return;
        }
        Properties properties = this.loadProperties(new File(this.iuProfileProperties));
        if (properties == null) {
            return;
        }
        HashSet<String> alreadyProcessed = new HashSet<String>();
        for (String line : properties.keySet()) {
            IQueryResult<IInstallableUnit> qr;
            int index = line.lastIndexOf(46);
            if (index == -1) continue;
            int num = -1;
            String id = null;
            try {
                num = Integer.parseInt(line.substring(index + 1));
                line = line.substring(0, index);
                index = line.lastIndexOf(46);
                if (index == -1) continue;
                id = line.substring(0, index);
            }
            catch (NumberFormatException e) {
                this.logStatus((IStatus)new Status(2, "org.eclipse.equinox.p2.director.app", NLS.bind((String)Messages.Bad_format, (Object)line, (Object)this.iuProfileProperties), (Throwable)e));
                continue;
            }
            catch (IndexOutOfBoundsException e) {
                this.logStatus((IStatus)new Status(2, "org.eclipse.equinox.p2.director.app", NLS.bind((String)Messages.Bad_format, (Object)line, (Object)this.iuProfileProperties), (Throwable)e));
                continue;
            }
            String versionLine = new StringBuffer(String.valueOf(id)).append('.').append("version").append('.').append(num).toString();
            String keyLine = new StringBuffer(String.valueOf(id)).append('.').append("key").append('.').append(num).toString();
            String valueLine = new StringBuffer(String.valueOf(id)).append('.').append("value").append('.').append(num).toString();
            if (alreadyProcessed.contains(versionLine) || alreadyProcessed.contains(keyLine) || alreadyProcessed.contains(valueLine)) continue;
            alreadyProcessed.add(versionLine);
            alreadyProcessed.add(keyLine);
            alreadyProcessed.add(valueLine);
            Version version = Version.create((String)((String)properties.get(versionLine)));
            String key = (String)properties.get(keyLine);
            String value = (String)properties.get(valueLine);
            if (key == null || value == null) {
                String message = NLS.bind((String)Messages.Unmatched_iu_profile_property_key_value, (Object)new StringBuffer(String.valueOf(key)).append('/').append(value).toString());
                this.logStatus((IStatus)new Status(2, "org.eclipse.equinox.p2.director.app", message));
                continue;
            }
            IQuery query = QueryUtil.createIUQuery((String)id, (Version)version);
            if (version == null) {
                query = QueryUtil.createLatestQuery((IQuery)query);
            }
            if ((qr = this.getInstallableUnits(null, (IQuery<IInstallableUnit>)query, null)).isEmpty()) {
                String msg = NLS.bind((String)Messages.Cannot_set_iu_profile_property_iu_does_not_exist, (Object)new StringBuffer(String.valueOf(id)).append('/').append(version).toString());
                this.logStatus((IStatus)new Status(2, "org.eclipse.equinox.p2.director.app", msg));
                continue;
            }
            IInstallableUnit iu = (IInstallableUnit)qr.iterator().next();
            request.setInstallableUnitProfileProperty(iu, key, value);
        }
    }

    private void cleanupRepositories() {
        int i;
        if (this.artifactReposForRemoval != null && this.artifactManager != null) {
            i = 0;
            while (i < this.artifactReposForRemoval.length && this.artifactReposForRemoval[i] != null) {
                this.artifactManager.removeRepository(this.artifactReposForRemoval[i]);
                ++i;
            }
        }
        if (this.metadataReposForRemoval != null && this.metadataManager != null) {
            i = 0;
            while (i < this.metadataReposForRemoval.length && this.metadataReposForRemoval[i] != null) {
                this.metadataManager.removeRepository(this.metadataReposForRemoval[i]);
                ++i;
            }
        }
    }

    private IQueryResult<IInstallableUnit> collectRootIUs(IQuery<IInstallableUnit> query) {
        NullProgressMonitor nullMonitor = new NullProgressMonitor();
        int top = this.metadataRepositoryLocations.size();
        if (top == 0) {
            return this.getInstallableUnits(null, query, (IProgressMonitor)nullMonitor);
        }
        ArrayList<LocationQueryable> locationQueryables = new ArrayList<LocationQueryable>(top);
        int i = 0;
        while (i < top) {
            locationQueryables.add(new LocationQueryable(this.metadataRepositoryLocations.get(i)));
            ++i;
        }
        return QueryUtil.compoundQueryable(locationQueryables).query(query, (IProgressMonitor)nullMonitor);
    }

    private Collection<IInstallableUnit> collectRoots(IProfile profile, List<IQuery<IInstallableUnit>> rootNames, boolean forInstall) throws CoreException {
        ArrayList<IInstallableUnit> allRoots = new ArrayList<IInstallableUnit>();
        for (IQuery<IInstallableUnit> rootQuery : rootNames) {
            Iterator itor;
            IQueryResult roots = null;
            if (forInstall) {
                roots = this.collectRootIUs((IQuery<IInstallableUnit>)QueryUtil.createLatestQuery(rootQuery));
            }
            if (roots == null || roots.isEmpty()) {
                roots = profile.query(rootQuery, (IProgressMonitor)new NullProgressMonitor());
            }
            if (!(itor = roots.iterator()).hasNext()) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.equinox.p2.director.app", NLS.bind((String)Messages.Missing_IU, rootQuery)));
            }
            do {
                allRoots.add((IInstallableUnit)itor.next());
            } while (itor.hasNext());
        }
        return allRoots;
    }

    synchronized Bundle getBundle(String symbolicName) {
        if (this.packageAdmin == null) {
            return null;
        }
        Bundle[] bundles = this.packageAdmin.getBundles(symbolicName, null);
        if (bundles == null) {
            return null;
        }
        int i = 0;
        while (i < bundles.length) {
            if ((bundles[i].getState() & 3) == 0) {
                return bundles[i];
            }
            ++i;
        }
        return null;
    }

    private String getEnvironmentProperty() {
        HashMap<String, String> values = new HashMap<String, String>();
        if (this.os != null) {
            values.put("osgi.os", this.os);
        }
        if (this.nl != null) {
            values.put("osgi.nl", this.nl);
        }
        if (this.ws != null) {
            values.put("osgi.ws", this.ws);
        }
        if (this.arch != null) {
            values.put("osgi.arch", this.arch);
        }
        return values.isEmpty() ? null : this.toString(values);
    }

    private IProfile getProfile() {
        IProfileRegistry profileRegistry = (IProfileRegistry)this.targetAgent.getService(IProfileRegistry.SERVICE_NAME);
        if (this.profileId == null) {
            this.profileId = "_SELF_";
            this.noProfileId = true;
        }
        return profileRegistry.getProfile(this.profileId);
    }

    private IProfile initializeProfile() throws CoreException {
        IProfile profile = this.getProfile();
        if (profile == null) {
            String env;
            if (this.destination == null) {
                this.missingArgument("destination");
            }
            if (this.flavor == null) {
                this.flavor = System.getProperty("eclipse.p2.configurationFlavor", FLAVOR_DEFAULT);
            }
            HashMap<String, String> props = new HashMap<String, String>();
            props.put("org.eclipse.equinox.p2.installFolder", this.destination.toString());
            if (this.bundlePool == null) {
                props.put("org.eclipse.equinox.p2.cache", this.sharedLocation == null ? this.destination.getAbsolutePath() : this.sharedLocation.getAbsolutePath());
            } else {
                props.put("org.eclipse.equinox.p2.cache", this.bundlePool.getAbsolutePath());
            }
            if (this.roamingProfile) {
                props.put("org.eclipse.equinox.p2.roaming", Boolean.TRUE.toString());
            }
            if ((env = this.getEnvironmentProperty()) != null) {
                props.put("org.eclipse.equinox.p2.environments", env);
            }
            if (this.profileProperties != null) {
                this.putProperties(this.profileProperties, props);
            }
            profile = ((IProfileRegistry)this.targetAgent.getService(IProfileRegistry.SERVICE_NAME)).addProfile(this.profileId, props);
        }
        return profile;
    }

    private void initializeRepositories() throws CoreException {
        if (this.rootsToInstall.isEmpty() && this.revertToPreviousState == NOTHING_TO_REVERT_TO && !this.printIUList) {
            return;
        }
        if (this.artifactRepositoryLocations == null) {
            this.missingArgument("-artifactRepository");
        }
        this.artifactManager = (IArtifactRepositoryManager)this.targetAgent.getService(IArtifactRepositoryManager.SERVICE_NAME);
        if (this.artifactManager == null) {
            throw new ProvisionException(Messages.Application_NoManager);
        }
        int removalIdx = 0;
        boolean anyValid = false;
        this.artifactReposForRemoval = new URI[this.artifactRepositoryLocations.size()];
        int i = 0;
        while (i < this.artifactRepositoryLocations.size()) {
            URI location = this.artifactRepositoryLocations.get(i);
            try {
                if (!this.artifactManager.contains(location)) {
                    this.artifactManager.loadRepository(location, null);
                    this.artifactReposForRemoval[removalIdx++] = location;
                }
                anyValid = true;
            }
            catch (ProvisionException e) {
                this.logStatus(e.getStatus());
            }
            ++i;
        }
        if (!anyValid) {
            this.noArtifactRepositorySpecified = true;
        }
        if (this.metadataRepositoryLocations == null) {
            this.missingArgument("metadataRepository");
        }
        this.metadataManager = (IMetadataRepositoryManager)this.targetAgent.getService(IMetadataRepositoryManager.SERVICE_NAME);
        if (this.metadataManager == null) {
            throw new ProvisionException(Messages.Application_NoManager);
        }
        removalIdx = 0;
        anyValid = false;
        int top = this.metadataRepositoryLocations.size();
        this.metadataReposForRemoval = new URI[top];
        int i2 = 0;
        while (i2 < top) {
            URI location = this.metadataRepositoryLocations.get(i2);
            try {
                if (!this.metadataManager.contains(location)) {
                    this.metadataManager.loadRepository(location, null);
                    this.metadataReposForRemoval[removalIdx++] = location;
                }
                anyValid = true;
            }
            catch (ProvisionException e) {
                this.logStatus(e.getStatus());
            }
            ++i2;
        }
        if (!anyValid) {
            throw new ProvisionException(Messages.Application_NoRepositories);
        }
    }

    private void initializeServices() throws CoreException {
        URI p2DataArea;
        BundleContext context = Activator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.packageAdminRef = context.getServiceReference((Class)clazz);
        this.packageAdmin = (PackageAdmin)context.getService(this.packageAdminRef);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.equinox.p2.core.IProvisioningAgentProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceReference agentProviderRef = context.getServiceReference((Class)clazz2);
        IProvisioningAgentProvider provider = (IProvisioningAgentProvider)context.getService(agentProviderRef);
        if (this.destination != null || this.sharedLocation != null) {
            File dataAreaFile = this.sharedLocation == null ? new File(this.destination, "p2") : this.sharedLocation;
            p2DataArea = dataAreaFile.toURI();
        } else {
            p2DataArea = null;
        }
        this.targetAgent = provider.createAgent(p2DataArea);
        this.targetAgent.registerService("org.eclipse.equinox.p2.installer.agent", (Object)provider.createAgent(null));
        context.ungetService(agentProviderRef);
        if (this.profileId == null && this.destination != null) {
            block31: {
                File configIni = new File(this.destination, "configuration/config.ini");
                InputStream in = null;
                try {
                    try {
                        Properties ciProps = new Properties();
                        in = new BufferedInputStream(new FileInputStream(configIni));
                        ciProps.load(in);
                        this.profileId = ciProps.getProperty(PROP_P2_PROFILE);
                    }
                    catch (IOException iOException) {
                        if (in != null) {
                            try {
                                in.close();
                            }
                            catch (IOException iOException2) {}
                        }
                        break block31;
                    }
                }
                catch (Throwable throwable) {
                    if (in != null) {
                        try {
                            in.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
                if (in != null) {
                    try {
                        in.close();
                    }
                    catch (IOException iOException) {}
                }
            }
            if (this.profileId == null) {
                this.profileId = this.destination.toString();
            }
        }
        if (this.profileId != null) {
            this.targetAgent.registerService(PROP_P2_PROFILE, (Object)this.profileId);
        } else {
            this.targetAgent.unregisterService(PROP_P2_PROFILE, null);
        }
        IDirector director = (IDirector)this.targetAgent.getService(IDirector.SERVICE_NAME);
        if (director == null) {
            throw new ProvisionException(Messages.Missing_director);
        }
        this.planner = (IPlanner)this.targetAgent.getService(IPlanner.SERVICE_NAME);
        if (this.planner == null) {
            throw new ProvisionException(Messages.Missing_planner);
        }
        this.engine = (IEngine)this.targetAgent.getService(IEngine.SERVICE_NAME);
        if (this.engine == null) {
            throw new ProvisionException(Messages.Missing_Engine);
        }
        this.targetAgent.registerService(UIServices.SERVICE_NAME, (Object)new AvoidTrustPromptService());
    }

    private void logStatus(IStatus status) {
        if (this.log != null) {
            this.log.log(status);
        } else {
            LogHelper.log((IStatus)status);
        }
    }

    private void printMessage(String message) {
        if (this.log != null) {
            this.log.log(message);
        } else {
            System.out.println(message);
        }
    }

    private void logFailure(IStatus status) {
        if (this.log == null) {
            FrameworkLog frameworkLog;
            BundleContext bundleContext = Activator.getContext();
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.osgi.framework.log.FrameworkLog");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((frameworkLog = (FrameworkLog)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName())) != null) {
                System.err.println(new StringBuffer("Application failed, log file location: ").append(frameworkLog.getFile()).toString());
            }
        }
        this.logStatus(status);
    }

    private void markRoots(IProfileChangeRequest request, Collection<IInstallableUnit> roots) {
        for (IInstallableUnit root : roots) {
            request.setInstallableUnitProfileProperty(root, "org.eclipse.equinox.p2.type.root", Boolean.TRUE.toString());
        }
    }

    private void missingArgument(String argumentName) throws CoreException {
        throw new ProvisionException(NLS.bind((String)Messages.Missing_Required_Argument, (Object)argumentName));
    }

    private void performList() throws CoreException {
        if (this.metadataRepositoryLocations.isEmpty()) {
            this.missingArgument("metadataRepository");
        }
        ArrayList<IInstallableUnit> allRoots = new ArrayList<IInstallableUnit>();
        if (this.rootsToList.size() == 0) {
            Iterator roots = this.collectRootIUs((IQuery<IInstallableUnit>)QueryUtil.createIUAnyQuery()).iterator();
            while (roots.hasNext()) {
                allRoots.add((IInstallableUnit)roots.next());
            }
        } else {
            for (IQuery<IInstallableUnit> root : this.rootsToList) {
                Iterator roots = this.collectRootIUs(root).iterator();
                while (roots.hasNext()) {
                    allRoots.add((IInstallableUnit)roots.next());
                }
            }
        }
        Collections.sort(allRoots);
        for (IInstallableUnit iu : allRoots) {
            System.out.println(new StringBuffer(String.valueOf(iu.getId())).append('=').append(iu.getVersion()).toString());
        }
    }

    private void performProvisioningActions() throws CoreException {
        IProfile profile = this.initializeProfile();
        Collection<IInstallableUnit> installs = this.collectRoots(profile, this.rootsToInstall, true);
        Collection<IInstallableUnit> uninstalls = this.collectRoots(profile, this.rootsToUninstall, false);
        boolean wasRoaming = Boolean.valueOf(profile.getProperty("org.eclipse.equinox.p2.roaming"));
        try {
            this.updateRoamingProperties(profile);
            ProvisioningContext context = new ProvisioningContext(this.targetAgent);
            context.setMetadataRepositories(this.metadataRepositoryLocations.toArray(new URI[this.metadataRepositoryLocations.size()]));
            context.setArtifactRepositories(this.artifactRepositoryLocations.toArray(new URI[this.artifactRepositoryLocations.size()]));
            context.setProperty("org.eclipse.equinox.p2.director.followRepositoryReferences", String.valueOf(this.followReferences));
            context.setProperty(FOLLOW_ARTIFACT_REPOSITORY_REFERENCES, String.valueOf(this.followReferences));
            ProfileChangeRequest request = this.buildProvisioningRequest(profile, installs, uninstalls);
            this.printRequest(request);
            this.planAndExecute(profile, context, request);
        }
        finally {
            if (wasRoaming && !Boolean.valueOf(profile.getProperty("org.eclipse.equinox.p2.roaming")).booleanValue()) {
                this.setRoaming(profile);
            }
        }
    }

    private void planAndExecute(IProfile profile, ProvisioningContext context, ProfileChangeRequest request) throws CoreException {
        IProvisioningPlan result = this.planner.getProvisioningPlan((IProfileChangeRequest)request, context, (IProgressMonitor)new NullProgressMonitor());
        IStatus operationStatus = result.getStatus();
        if (!operationStatus.isOK()) {
            throw new CoreException(operationStatus);
        }
        this.executePlan(context, result);
    }

    private void executePlan(ProvisioningContext context, IProvisioningPlan result) throws CoreException {
        if (!this.verifyOnly) {
            IStatus operationStatus = !this.downloadOnly ? PlanExecutionHelper.executePlan((IProvisioningPlan)result, (IEngine)this.engine, (ProvisioningContext)context, (IProgressMonitor)new NullProgressMonitor()) : PlanExecutionHelper.executePlan((IProvisioningPlan)result, (IEngine)this.engine, (IPhaseSet)PhaseSetFactory.createPhaseSetIncluding((String[])new String[]{PhaseSetFactory.PHASE_COLLECT, PhaseSetFactory.PHASE_CHECK_TRUST}), (ProvisioningContext)context, (IProgressMonitor)new NullProgressMonitor());
            if (!operationStatus.isOK()) {
                if (this.noArtifactRepositorySpecified && this.hasNoRepositoryFound(operationStatus)) {
                    throw new ProvisionException(Messages.Application_NoRepositories);
                }
                throw new CoreException(operationStatus);
            }
            if (this.tag != null) {
                long newState = result.getProfile().getTimestamp();
                IProfileRegistry registry = (IProfileRegistry)this.targetAgent.getService(IProfileRegistry.SERVICE_NAME);
                registry.setProfileStateProperty(result.getProfile().getProfileId(), newState, "org.eclipse.equinox.p2.state.tag", this.tag);
            }
        }
    }

    private boolean hasNoRepositoryFound(IStatus status) {
        if (status.getException() != null && NO_ARTIFACT_REPOSITORIES_AVAILABLE.equals(status.getException().getMessage())) {
            return true;
        }
        if (status.isMultiStatus()) {
            IStatus[] iStatusArray = status.getChildren();
            int n = iStatusArray.length;
            int n2 = 0;
            while (n2 < n) {
                IStatus child = iStatusArray[n2];
                if (this.hasNoRepositoryFound(child)) {
                    return true;
                }
                ++n2;
            }
        }
        return false;
    }

    private void printRequest(ProfileChangeRequest request) {
        Collection toAdd = request.getAdditions();
        for (IInstallableUnit added : toAdd) {
            this.printMessage(NLS.bind((String)Messages.Installing, (Object)added.getId(), (Object)added.getVersion()));
        }
        Collection toRemove = request.getRemovals();
        for (IInstallableUnit removed : toRemove) {
            this.printMessage(NLS.bind((String)Messages.Uninstalling, (Object)removed.getId(), (Object)removed.getVersion()));
        }
    }

    public void processArguments(String[] args) throws CoreException {
        if (args == null) {
            this.printHelpInfo = true;
            return;
        }
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.osgi.service.environment.EnvironmentInfo");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        EnvironmentInfo info = (EnvironmentInfo)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName());
        this.os = info.getOS();
        this.ws = info.getWS();
        this.nl = info.getNL();
        this.arch = info.getOSArch();
        int i = 0;
        while (i < args.length) {
            String optionalArgument;
            String opt = args[i];
            if (OPTION_LIST.isOption(opt)) {
                this.printIUList = true;
                optionalArgument = DirectorApplication.getOptionalArgument(args, i);
                if (optionalArgument != null) {
                    DirectorApplication.parseIUsArgument(this.rootsToList, optionalArgument);
                    ++i;
                }
            } else if (OPTION_LIST_INSTALLED.isOption(opt)) {
                this.printRootIUList = true;
            } else if (OPTION_LIST_TAGS.isOption(opt)) {
                this.printTags = true;
            } else if (OPTION_DOWNLOAD_ONLY.isOption(opt)) {
                this.downloadOnly = true;
            } else if (OPTION_HELP.isOption(opt)) {
                this.printHelpInfo = true;
            } else if (OPTION_INSTALL_IU.isOption(opt)) {
                DirectorApplication.parseIUsArgument(this.rootsToInstall, DirectorApplication.getRequiredArgument(args, ++i));
            } else if (OPTION_UNINSTALL_IU.isOption(opt)) {
                DirectorApplication.parseIUsArgument(this.rootsToUninstall, DirectorApplication.getRequiredArgument(args, ++i));
            } else if (OPTION_REVERT.isOption(opt)) {
                String targettedState = DirectorApplication.getOptionalArgument(args, i);
                if (targettedState == null) {
                    this.revertToPreviousState = REVERT_TO_PREVIOUS;
                } else {
                    ++i;
                    this.revertToPreviousState = targettedState;
                }
            } else if (OPTION_PROFILE.isOption(opt)) {
                this.profileId = DirectorApplication.getRequiredArgument(args, ++i);
            } else if (OPTION_FLAVOR.isOption(opt)) {
                this.flavor = DirectorApplication.getRequiredArgument(args, ++i);
            } else if (OPTION_SHARED.isOption(opt)) {
                if (++i < args.length) {
                    String nxt = args[i];
                    if (nxt.startsWith("-")) {
                        --i;
                    } else {
                        this.sharedLocation = DirectorApplication.processFileArgument(nxt);
                    }
                }
                if (this.sharedLocation == null) {
                    this.sharedLocation = Path.fromOSString((String)System.getProperty("user.home")).append(".p2/").toFile();
                }
            } else if (OPTION_DESTINATION.isOption(opt)) {
                this.destination = DirectorApplication.processFileArgument(DirectorApplication.getRequiredArgument(args, ++i));
            } else if (OPTION_BUNDLEPOOL.isOption(opt)) {
                this.bundlePool = DirectorApplication.processFileArgument(DirectorApplication.getRequiredArgument(args, ++i));
            } else if (OPTION_METADATAREPOS.isOption(opt)) {
                DirectorApplication.getURIs(this.metadataRepositoryLocations, DirectorApplication.getRequiredArgument(args, ++i));
            } else if (OPTION_ARTIFACTREPOS.isOption(opt)) {
                DirectorApplication.getURIs(this.artifactRepositoryLocations, DirectorApplication.getRequiredArgument(args, ++i));
            } else if (OPTION_REPOSITORIES.isOption(opt)) {
                String arg = DirectorApplication.getRequiredArgument(args, ++i);
                DirectorApplication.getURIs(this.metadataRepositoryLocations, arg);
                DirectorApplication.getURIs(this.artifactRepositoryLocations, arg);
            } else if (OPTION_PROFILE_PROPS.isOption(opt)) {
                this.profileProperties = DirectorApplication.getRequiredArgument(args, ++i);
            } else if (OPTION_IU_PROFILE_PROPS.isOption(opt)) {
                this.iuProfileProperties = DirectorApplication.getRequiredArgument(args, ++i);
            } else if (OPTION_ROAMING.isOption(opt)) {
                this.roamingProfile = true;
            } else if (OPTION_VERIFY_ONLY.isOption(opt)) {
                this.verifyOnly = true;
            } else if (OPTION_PURGEHISTORY.isOption(opt)) {
                this.purgeRegistry = true;
            } else if (OPTION_FOLLOW_REFERENCES.isOption(opt)) {
                this.followReferences = true;
            } else if (OPTION_P2_OS.isOption(opt)) {
                this.os = DirectorApplication.getRequiredArgument(args, ++i);
            } else if (OPTION_P2_WS.isOption(opt)) {
                this.ws = DirectorApplication.getRequiredArgument(args, ++i);
            } else if (OPTION_P2_NL.isOption(opt)) {
                this.nl = DirectorApplication.getRequiredArgument(args, ++i);
            } else if (OPTION_P2_ARCH.isOption(opt)) {
                this.arch = DirectorApplication.getRequiredArgument(args, ++i);
            } else if (OPTION_TAG.isOption(opt)) {
                this.tag = DirectorApplication.getRequiredArgument(args, ++i);
            } else if (OPTION_IGNORED.isOption(opt)) {
                optionalArgument = DirectorApplication.getOptionalArgument(args, i);
                if (optionalArgument != null) {
                    ++i;
                }
            } else {
                throw new ProvisionException(NLS.bind((String)Messages.unknown_option_0, (Object)opt));
            }
            ++i;
        }
        if (!(this.printHelpInfo || this.printIUList || this.printRootIUList || this.printTags || this.purgeRegistry || !this.rootsToInstall.isEmpty() || !this.rootsToUninstall.isEmpty() || this.revertToPreviousState != NOTHING_TO_REVERT_TO)) {
            this.printMessage(Messages.Help_Missing_argument);
            this.printHelpInfo = true;
        }
    }

    private void putProperties(String pairs, Map<String, String> properties) {
        String[] propPairs = StringHelper.getArrayFromString((String)pairs, (char)',');
        int i = 0;
        while (i < propPairs.length) {
            String value;
            String tag;
            String propPair = propPairs[i];
            int eqIdx = propPair.indexOf(61);
            if (eqIdx >= 0 && (tag = propPair.substring(0, eqIdx).trim()).length() != 0 && (value = propPair.substring(eqIdx + 1).trim()).length() > 0) {
                properties.put(tag, value);
            }
            ++i;
        }
    }

    private void cleanupServices() {
        BundleContext context = Activator.getContext();
        if (this.targetAgent != null) {
            this.targetAgent.stop();
            this.targetAgent = null;
        }
        if (this.packageAdminRef != null) {
            context.ungetService(this.packageAdminRef);
        }
    }

    public Object run(String[] args) {
        long time = System.currentTimeMillis();
        try {
            this.processArguments(args);
            if (this.printHelpInfo) {
                this.performHelpInfo();
            } else {
                this.initializeServices();
                this.initializeRepositories();
                if (this.revertToPreviousState != NOTHING_TO_REVERT_TO) {
                    this.revertToPreviousState();
                } else if (!this.rootsToInstall.isEmpty() || !this.rootsToUninstall.isEmpty()) {
                    this.performProvisioningActions();
                }
                if (this.printIUList) {
                    this.performList();
                }
                if (this.printRootIUList) {
                    this.performListInstalledRoots();
                }
                if (this.printTags) {
                    this.performPrintTags();
                }
                if (this.purgeRegistry) {
                    this.purgeRegistry();
                }
                this.printMessage(NLS.bind((String)Messages.Operation_complete, (Object)new Long(System.currentTimeMillis() - time)));
            }
            Integer n = IApplication.EXIT_OK;
            return n;
        }
        catch (CoreException e) {
            this.printMessage(Messages.Operation_failed);
            this.deeplyPrint(e.getStatus(), System.err, 0);
            this.logFailure(e.getStatus());
            this.setSystemProperty("eclipse.exitdata", "");
            Integer n = EXIT_ERROR;
            return n;
        }
        finally {
            if (this.packageAdminRef != null) {
                this.cleanupRepositories();
                this.cleanupServices();
            }
        }
    }

    private void purgeRegistry() throws ProvisionException {
        if (this.getProfile() == null) {
            return;
        }
        IProfileRegistry registry = (IProfileRegistry)this.targetAgent.getService(IProfileRegistry.SERVICE_NAME);
        long[] allProfiles = registry.listProfileTimestamps(this.profileId);
        int i = 0;
        while (i < allProfiles.length - 1) {
            registry.removeProfile(this.profileId, allProfiles[i]);
            ++i;
        }
    }

    private void revertToPreviousState() throws CoreException {
        IProfile profile = this.initializeProfile();
        IProfileRegistry profileRegistry = (IProfileRegistry)this.targetAgent.getService(IProfileRegistry.SERVICE_NAME);
        IProfile targetProfile = null;
        if (this.revertToPreviousState == REVERT_TO_PREVIOUS) {
            long[] profiles = profileRegistry.listProfileTimestamps(profile.getProfileId());
            if (profiles.length == 0) {
                return;
            }
            targetProfile = profileRegistry.getProfile(profile.getProfileId(), profiles[profiles.length - 1]);
        } else {
            targetProfile = profileRegistry.getProfile(profile.getProfileId(), this.getTimestampToRevertTo(profileRegistry, profile.getProfileId()));
        }
        if (targetProfile == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.equinox.p2.director.app", Messages.Missing_profile));
        }
        IProvisioningPlan plan = this.planner.getDiffPlan(profile, targetProfile, (IProgressMonitor)new NullProgressMonitor());
        ProvisioningContext context = new ProvisioningContext(this.targetAgent);
        context.setMetadataRepositories(this.metadataRepositoryLocations.toArray(new URI[this.metadataRepositoryLocations.size()]));
        context.setArtifactRepositories(this.artifactRepositoryLocations.toArray(new URI[this.artifactRepositoryLocations.size()]));
        context.setProperty("org.eclipse.equinox.p2.director.followRepositoryReferences", String.valueOf(this.followReferences));
        context.setProperty(FOLLOW_ARTIFACT_REPOSITORY_REFERENCES, String.valueOf(this.followReferences));
        this.executePlan(context, plan);
    }

    /*
     * Unable to fully structure code
     */
    private long getTimestampToRevertTo(IProfileRegistry profileRegistry, String profId) {
        block5: {
            timestampToRevertTo = -1L;
            try {
                timestampToRevertTo = Long.valueOf(this.revertToPreviousState);
                break block5;
            }
            catch (NumberFormatException v0) {
                tags = profileRegistry.getProfileStateProperties(profId, "org.eclipse.equinox.p2.state.tag");
                entries = tags.entrySet();
                ** for (entry : entries)
            }
lbl-1000:
            // 1 sources

            {
                if (!((String)entry.getValue()).equals(this.revertToPreviousState)) continue;
                try {
                    tmp = Long.valueOf((String)entry.getKey());
                    if (tmp <= timestampToRevertTo) continue;
                    timestampToRevertTo = tmp;
                }
                catch (NumberFormatException v1) {}
                continue;
            }
        }
        return timestampToRevertTo;
    }

    private void setSystemProperty(String key, String value) {
        EnvironmentInfo env;
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.osgi.service.environment.EnvironmentInfo");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((env = (EnvironmentInfo)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName())) != null) {
            env.setProperty(key, value);
        } else {
            System.getProperties().put(key, value);
        }
    }

    private static void appendLevelPrefix(PrintStream strm, int level) {
        int idx = 0;
        while (idx < level) {
            strm.print(' ');
            ++idx;
        }
    }

    IQueryResult<IInstallableUnit> getInstallableUnits(URI location, IQuery<IInstallableUnit> query, IProgressMonitor monitor) {
        IMetadataRepositoryManager queryable = null;
        if (location == null) {
            queryable = this.metadataManager;
        } else {
            try {
                queryable = this.metadataManager.loadRepository(location, monitor);
            }
            catch (ProvisionException provisionException) {}
        }
        if (queryable != null) {
            return queryable.query(query, monitor);
        }
        return Collector.emptyCollector();
    }

    private void deeplyPrint(CoreException ce, PrintStream strm, int level) {
        DirectorApplication.appendLevelPrefix(strm, level);
        if (this.stackTrace) {
            ce.printStackTrace(strm);
        }
        this.deeplyPrint(ce.getStatus(), strm, level);
    }

    private void deeplyPrint(IStatus status, PrintStream strm, int level) {
        DirectorApplication.appendLevelPrefix(strm, level);
        String msg = status.getMessage();
        strm.println(msg);
        Throwable cause = status.getException();
        if (cause != null) {
            strm.print("Caused by: ");
            if (this.stackTrace || !msg.equals(cause.getMessage()) && !msg.equals(cause.toString())) {
                this.deeplyPrint(cause, strm, level);
            }
        }
        if (status.isMultiStatus()) {
            IStatus[] children = status.getChildren();
            int i = 0;
            while (i < children.length) {
                this.deeplyPrint(children[i], strm, level + 1);
                ++i;
            }
        }
    }

    private void deeplyPrint(Throwable t, PrintStream strm, int level) {
        if (t instanceof CoreException) {
            this.deeplyPrint((CoreException)t, strm, level);
        } else {
            DirectorApplication.appendLevelPrefix(strm, level);
            if (this.stackTrace) {
                t.printStackTrace(strm);
            } else {
                strm.println(t.toString());
                Throwable cause = t.getCause();
                if (cause != null) {
                    strm.print("Caused by: ");
                    this.deeplyPrint(cause, strm, level);
                }
            }
        }
    }

    private void performHelpInfo() {
        CommandLineOption[] allOptions = new CommandLineOption[]{OPTION_HELP, OPTION_LIST, OPTION_LIST_INSTALLED, OPTION_INSTALL_IU, OPTION_UNINSTALL_IU, OPTION_REVERT, OPTION_DESTINATION, OPTION_METADATAREPOS, OPTION_ARTIFACTREPOS, OPTION_REPOSITORIES, OPTION_VERIFY_ONLY, OPTION_PROFILE, OPTION_FLAVOR, OPTION_SHARED, OPTION_BUNDLEPOOL, OPTION_PROFILE_PROPS, OPTION_IU_PROFILE_PROPS, OPTION_ROAMING, OPTION_P2_OS, OPTION_P2_WS, OPTION_P2_ARCH, OPTION_P2_NL, OPTION_PURGEHISTORY, OPTION_FOLLOW_REFERENCES};
        int i = 0;
        while (i < allOptions.length) {
            allOptions[i].appendHelp(System.out);
            ++i;
        }
    }

    private IStatus setRoaming(IProfile profile) {
        ProfileChangeRequest request = new ProfileChangeRequest(profile);
        request.setProfileProperty("org.eclipse.equinox.p2.roaming", "true");
        ProvisioningContext context = new ProvisioningContext(this.targetAgent);
        context.setMetadataRepositories(new URI[0]);
        context.setArtifactRepositories(new URI[0]);
        IProvisioningPlan result = this.planner.getProvisioningPlan((IProfileChangeRequest)request, context, (IProgressMonitor)new NullProgressMonitor());
        return PlanExecutionHelper.executePlan((IProvisioningPlan)result, (IEngine)this.engine, (ProvisioningContext)context, (IProgressMonitor)new NullProgressMonitor());
    }

    public Object start(IApplicationContext context) throws Exception {
        return this.run((String[])context.getArguments().get("application.args"));
    }

    private String toString(Map<String, String> context) {
        StringBuffer result = new StringBuffer();
        for (Map.Entry<String, String> entry : context.entrySet()) {
            if (result.length() > 0) {
                result.append(',');
            }
            result.append(entry.getKey());
            result.append('=');
            result.append(entry.getValue());
        }
        return result.toString();
    }

    private void updateRoamingProperties(IProfile profile) throws CoreException {
        if (this.destination == null) {
            return;
        }
        if (this.noProfileId) {
            throw new ProvisionException(Messages.Missing_profileid);
        }
        if (!Boolean.valueOf(profile.getProperty("org.eclipse.equinox.p2.roaming")).booleanValue()) {
            return;
        }
        ProfileChangeRequest request = new ProfileChangeRequest(profile);
        if (!this.destination.equals(new File(profile.getProperty("org.eclipse.equinox.p2.installFolder")))) {
            request.setProfileProperty("org.eclipse.equinox.p2.installFolder", this.destination.getAbsolutePath());
        }
        File cacheLocation = null;
        cacheLocation = this.bundlePool == null ? (this.sharedLocation == null ? this.destination.getAbsoluteFile() : this.sharedLocation.getAbsoluteFile()) : this.bundlePool.getAbsoluteFile();
        if (!cacheLocation.equals(new File(profile.getProperty("org.eclipse.equinox.p2.cache")))) {
            request.setProfileProperty("org.eclipse.equinox.p2.cache", cacheLocation.getAbsolutePath());
        }
        if (request.getProfileProperties().size() == 0) {
            return;
        }
        request.setProfileProperty("org.eclipse.equinox.p2.roaming", "false");
        ProvisioningContext context = new ProvisioningContext(this.targetAgent);
        context.setMetadataRepositories(new URI[0]);
        context.setArtifactRepositories(new URI[0]);
        IProvisioningPlan result = this.planner.getProvisioningPlan((IProfileChangeRequest)request, context, (IProgressMonitor)new NullProgressMonitor());
        IStatus status = PlanExecutionHelper.executePlan((IProvisioningPlan)result, (IEngine)this.engine, (ProvisioningContext)context, (IProgressMonitor)new NullProgressMonitor());
        if (!status.isOK()) {
            throw new CoreException((IStatus)new MultiStatus("org.eclipse.equinox.p2.director.app", 4, new IStatus[]{status}, NLS.bind((String)Messages.Cant_change_roaming, (Object)profile.getProfileId()), null));
        }
    }

    public void stop() {
        if (this.log != null) {
            this.log.close();
        }
    }

    public void setLog(ILog log) {
        this.log = log;
    }

    private void performListInstalledRoots() throws CoreException {
        IProfile profile = this.initializeProfile();
        IQueryResult roots = profile.query((IQuery)new UserVisibleRootQuery(), null);
        TreeSet sorted = new TreeSet(roots.toUnmodifiableSet());
        for (IInstallableUnit iu : sorted) {
            System.out.println(new StringBuffer(String.valueOf(iu.getId())).append('/').append(iu.getVersion()).toString());
        }
    }

    private void performPrintTags() throws CoreException {
        IProfile profile = this.initializeProfile();
        IProfileRegistry registry = (IProfileRegistry)this.targetAgent.getService(IProfileRegistry.SERVICE_NAME);
        Map tags = registry.getProfileStateProperties(profile.getProfileId(), "org.eclipse.equinox.p2.state.tag");
        ArrayList timeStamps = new ArrayList(tags.keySet());
        Collections.sort(timeStamps, Collections.reverseOrder());
        for (String timestamp : timeStamps) {
            System.out.println((String)tags.get(timestamp));
        }
    }

    class AvoidTrustPromptService
    extends UIServices {
        AvoidTrustPromptService() {
        }

        public UIServices.AuthenticationInfo getUsernamePassword(String location) {
            return null;
        }

        public UIServices.AuthenticationInfo getUsernamePassword(String location, UIServices.AuthenticationInfo previousInfo) {
            return null;
        }

        public UIServices.TrustInfo getTrustInfo(Certificate[][] untrustedChain, String[] unsignedDetail) {
            return new UIServices.TrustInfo(null, false, true);
        }
    }

    private static class CommandLineOption {
        private final String[] identifiers;
        private final String optionSyntaxString;
        private final String helpString;

        CommandLineOption(String[] identifiers, String optionSyntaxString, String helpString) {
            this.identifiers = identifiers;
            this.optionSyntaxString = optionSyntaxString;
            this.helpString = helpString;
        }

        boolean isOption(String opt) {
            int idx = this.identifiers.length;
            while (--idx >= 0) {
                if (!this.identifiers[idx].equalsIgnoreCase(opt)) continue;
                return true;
            }
            return false;
        }

        void appendHelp(PrintStream out) {
            out.print(this.identifiers[0]);
            int idx = 1;
            while (idx < this.identifiers.length) {
                out.print(" | ");
                out.print(this.identifiers[idx]);
                ++idx;
            }
            if (this.optionSyntaxString != null) {
                out.print(' ');
                out.print(this.optionSyntaxString);
            }
            out.println();
            out.print("  ");
            out.println(this.helpString);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class LocationQueryable
    implements IQueryable<IInstallableUnit> {
        private URI location;

        public LocationQueryable(URI location) {
            this.location = location;
            Assert.isNotNull((Object)location);
        }

        public IQueryResult<IInstallableUnit> query(IQuery<IInstallableUnit> query, IProgressMonitor monitor) {
            return DirectorApplication.this.getInstallableUnits(this.location, query, monitor);
        }
    }
}

