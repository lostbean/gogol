{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a project sink. If the sink does not exist, it is created. The
-- destination, filter, or both may be updated.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsSinksUpdate@.
module Network.Google.Resource.Logging.Projects.Sinks.Update
    (
    -- * REST Resource
      ProjectsSinksUpdateResource

    -- * Creating a Request
    , projectsSinksUpdate'
    , ProjectsSinksUpdate'

    -- * Request Lenses
    , psuXgafv
    , psuQuotaUser
    , psuPrettyPrint
    , psuUploadProtocol
    , psuPp
    , psuAccessToken
    , psuLogSink
    , psuUploadType
    , psuBearerToken
    , psuKey
    , psuOAuthToken
    , psuProjectsId
    , psuSinksId
    , psuFields
    , psuCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsSinksUpdate@ which the
-- 'ProjectsSinksUpdate'' request conforms to.
type ProjectsSinksUpdateResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "sinks" :>
             Capture "sinksId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "fields" Text :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         ReqBody '[JSON] LogSink :>
                                           Put '[JSON] LogSink

-- | Updates a project sink. If the sink does not exist, it is created. The
-- destination, filter, or both may be updated.
--
-- /See:/ 'projectsSinksUpdate'' smart constructor.
data ProjectsSinksUpdate' = ProjectsSinksUpdate'
    { _psuXgafv          :: !(Maybe Text)
    , _psuQuotaUser      :: !(Maybe Text)
    , _psuPrettyPrint    :: !Bool
    , _psuUploadProtocol :: !(Maybe Text)
    , _psuPp             :: !Bool
    , _psuAccessToken    :: !(Maybe Text)
    , _psuLogSink        :: !LogSink
    , _psuUploadType     :: !(Maybe Text)
    , _psuBearerToken    :: !(Maybe Text)
    , _psuKey            :: !(Maybe Key)
    , _psuOAuthToken     :: !(Maybe OAuthToken)
    , _psuProjectsId     :: !Text
    , _psuSinksId        :: !Text
    , _psuFields         :: !(Maybe Text)
    , _psuCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psuXgafv'
--
-- * 'psuQuotaUser'
--
-- * 'psuPrettyPrint'
--
-- * 'psuUploadProtocol'
--
-- * 'psuPp'
--
-- * 'psuAccessToken'
--
-- * 'psuLogSink'
--
-- * 'psuUploadType'
--
-- * 'psuBearerToken'
--
-- * 'psuKey'
--
-- * 'psuOAuthToken'
--
-- * 'psuProjectsId'
--
-- * 'psuSinksId'
--
-- * 'psuFields'
--
-- * 'psuCallback'
projectsSinksUpdate'
    :: LogSink -- ^ 'LogSink'
    -> Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsSinksUpdate'
projectsSinksUpdate' pPsuLogSink_ pPsuProjectsId_ pPsuSinksId_ =
    ProjectsSinksUpdate'
    { _psuXgafv = Nothing
    , _psuQuotaUser = Nothing
    , _psuPrettyPrint = True
    , _psuUploadProtocol = Nothing
    , _psuPp = True
    , _psuAccessToken = Nothing
    , _psuLogSink = pPsuLogSink_
    , _psuUploadType = Nothing
    , _psuBearerToken = Nothing
    , _psuKey = Nothing
    , _psuOAuthToken = Nothing
    , _psuProjectsId = pPsuProjectsId_
    , _psuSinksId = pPsuSinksId_
    , _psuFields = Nothing
    , _psuCallback = Nothing
    }

-- | V1 error format.
psuXgafv :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuXgafv = lens _psuXgafv (\ s a -> s{_psuXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
psuQuotaUser :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuQuotaUser
  = lens _psuQuotaUser (\ s a -> s{_psuQuotaUser = a})

-- | Returns response with indentations and line breaks.
psuPrettyPrint :: Lens' ProjectsSinksUpdate' Bool
psuPrettyPrint
  = lens _psuPrettyPrint
      (\ s a -> s{_psuPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psuUploadProtocol :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuUploadProtocol
  = lens _psuUploadProtocol
      (\ s a -> s{_psuUploadProtocol = a})

-- | Pretty-print response.
psuPp :: Lens' ProjectsSinksUpdate' Bool
psuPp = lens _psuPp (\ s a -> s{_psuPp = a})

-- | OAuth access token.
psuAccessToken :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuAccessToken
  = lens _psuAccessToken
      (\ s a -> s{_psuAccessToken = a})

-- | Multipart request metadata.
psuLogSink :: Lens' ProjectsSinksUpdate' LogSink
psuLogSink
  = lens _psuLogSink (\ s a -> s{_psuLogSink = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psuUploadType :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuUploadType
  = lens _psuUploadType
      (\ s a -> s{_psuUploadType = a})

-- | OAuth bearer token.
psuBearerToken :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuBearerToken
  = lens _psuBearerToken
      (\ s a -> s{_psuBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psuKey :: Lens' ProjectsSinksUpdate' (Maybe Key)
psuKey = lens _psuKey (\ s a -> s{_psuKey = a})

-- | OAuth 2.0 token for the current user.
psuOAuthToken :: Lens' ProjectsSinksUpdate' (Maybe OAuthToken)
psuOAuthToken
  = lens _psuOAuthToken
      (\ s a -> s{_psuOAuthToken = a})

-- | Part of \`sinkName\`. The resource name of the project sink to update.
psuProjectsId :: Lens' ProjectsSinksUpdate' Text
psuProjectsId
  = lens _psuProjectsId
      (\ s a -> s{_psuProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
psuSinksId :: Lens' ProjectsSinksUpdate' Text
psuSinksId
  = lens _psuSinksId (\ s a -> s{_psuSinksId = a})

-- | Selector specifying which fields to include in a partial response.
psuFields :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuFields
  = lens _psuFields (\ s a -> s{_psuFields = a})

-- | JSONP
psuCallback :: Lens' ProjectsSinksUpdate' (Maybe Text)
psuCallback
  = lens _psuCallback (\ s a -> s{_psuCallback = a})

instance GoogleAuth ProjectsSinksUpdate' where
        authKey = psuKey . _Just
        authToken = psuOAuthToken . _Just

instance GoogleRequest ProjectsSinksUpdate' where
        type Rs ProjectsSinksUpdate' = LogSink
        request = requestWithRoute defReq loggingURL
        requestWithRoute r u ProjectsSinksUpdate'{..}
          = go _psuXgafv _psuQuotaUser (Just _psuPrettyPrint)
              _psuUploadProtocol
              (Just _psuPp)
              _psuAccessToken
              _psuUploadType
              _psuBearerToken
              _psuKey
              _psuOAuthToken
              _psuProjectsId
              _psuSinksId
              _psuFields
              _psuCallback
              (Just AltJSON)
              _psuLogSink
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsSinksUpdateResource)
                      r
                      u