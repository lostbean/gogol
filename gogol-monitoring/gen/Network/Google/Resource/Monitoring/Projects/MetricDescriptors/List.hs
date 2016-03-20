{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Monitoring.Projects.MetricDescriptors.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists metric descriptors that match a filter.
--
-- /See:/ <https://cloud.google.com/monitoring/alpha/ Google Monitoring API Reference> for @monitoring.projects.metricDescriptors.list@.
module Network.Google.Resource.Monitoring.Projects.MetricDescriptors.List
    (
    -- * REST Resource
      ProjectsMetricDescriptorsListResource

    -- * Creating a Request
    , projectsMetricDescriptorsList
    , ProjectsMetricDescriptorsList

    -- * Request Lenses
    , pmdlXgafv
    , pmdlUploadProtocol
    , pmdlPp
    , pmdlAccessToken
    , pmdlUploadType
    , pmdlBearerToken
    , pmdlName
    , pmdlFilter
    , pmdlPageToken
    , pmdlPageSize
    , pmdlCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.metricDescriptors.list@ method which the
-- 'ProjectsMetricDescriptorsList' request conforms to.
type ProjectsMetricDescriptorsListResource =
     "v3" :>
       Capture "name" Text :>
         "metricDescriptors" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListMetricDescriptorsResponse

-- | Lists metric descriptors that match a filter.
--
-- /See:/ 'projectsMetricDescriptorsList' smart constructor.
data ProjectsMetricDescriptorsList = ProjectsMetricDescriptorsList
    { _pmdlXgafv          :: !(Maybe Text)
    , _pmdlUploadProtocol :: !(Maybe Text)
    , _pmdlPp             :: !Bool
    , _pmdlAccessToken    :: !(Maybe Text)
    , _pmdlUploadType     :: !(Maybe Text)
    , _pmdlBearerToken    :: !(Maybe Text)
    , _pmdlName           :: !Text
    , _pmdlFilter         :: !(Maybe Text)
    , _pmdlPageToken      :: !(Maybe Text)
    , _pmdlPageSize       :: !(Maybe (Textual Int32))
    , _pmdlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsMetricDescriptorsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmdlXgafv'
--
-- * 'pmdlUploadProtocol'
--
-- * 'pmdlPp'
--
-- * 'pmdlAccessToken'
--
-- * 'pmdlUploadType'
--
-- * 'pmdlBearerToken'
--
-- * 'pmdlName'
--
-- * 'pmdlFilter'
--
-- * 'pmdlPageToken'
--
-- * 'pmdlPageSize'
--
-- * 'pmdlCallback'
projectsMetricDescriptorsList
    :: Text -- ^ 'pmdlName'
    -> ProjectsMetricDescriptorsList
projectsMetricDescriptorsList pPmdlName_ =
    ProjectsMetricDescriptorsList
    { _pmdlXgafv = Nothing
    , _pmdlUploadProtocol = Nothing
    , _pmdlPp = True
    , _pmdlAccessToken = Nothing
    , _pmdlUploadType = Nothing
    , _pmdlBearerToken = Nothing
    , _pmdlName = pPmdlName_
    , _pmdlFilter = Nothing
    , _pmdlPageToken = Nothing
    , _pmdlPageSize = Nothing
    , _pmdlCallback = Nothing
    }

-- | V1 error format.
pmdlXgafv :: Lens' ProjectsMetricDescriptorsList (Maybe Text)
pmdlXgafv
  = lens _pmdlXgafv (\ s a -> s{_pmdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmdlUploadProtocol :: Lens' ProjectsMetricDescriptorsList (Maybe Text)
pmdlUploadProtocol
  = lens _pmdlUploadProtocol
      (\ s a -> s{_pmdlUploadProtocol = a})

-- | Pretty-print response.
pmdlPp :: Lens' ProjectsMetricDescriptorsList Bool
pmdlPp = lens _pmdlPp (\ s a -> s{_pmdlPp = a})

-- | OAuth access token.
pmdlAccessToken :: Lens' ProjectsMetricDescriptorsList (Maybe Text)
pmdlAccessToken
  = lens _pmdlAccessToken
      (\ s a -> s{_pmdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmdlUploadType :: Lens' ProjectsMetricDescriptorsList (Maybe Text)
pmdlUploadType
  = lens _pmdlUploadType
      (\ s a -> s{_pmdlUploadType = a})

-- | OAuth bearer token.
pmdlBearerToken :: Lens' ProjectsMetricDescriptorsList (Maybe Text)
pmdlBearerToken
  = lens _pmdlBearerToken
      (\ s a -> s{_pmdlBearerToken = a})

-- | The project on which to execute the request. The format is
-- \`\"projects\/ \"\`.
pmdlName :: Lens' ProjectsMetricDescriptorsList Text
pmdlName = lens _pmdlName (\ s a -> s{_pmdlName = a})

-- | If this field is empty, all custom and system-defined metric descriptors
-- are returned. Otherwise, the [filter](\/monitoring\/api\/v3\/filters)
-- specifies which metric descriptors are to be returned. For example, the
-- following filter matches all [custom
-- metrics](\/monitoring\/custom-metrics): metric.type =
-- starts_with(\"custom.googleapis.com\/\")
pmdlFilter :: Lens' ProjectsMetricDescriptorsList (Maybe Text)
pmdlFilter
  = lens _pmdlFilter (\ s a -> s{_pmdlFilter = a})

-- | If this field is not empty then it must contain the \`nextPageToken\`
-- value returned by a previous call to this method. Using this field
-- causes the method to return additional results from the previous method
-- call.
pmdlPageToken :: Lens' ProjectsMetricDescriptorsList (Maybe Text)
pmdlPageToken
  = lens _pmdlPageToken
      (\ s a -> s{_pmdlPageToken = a})

-- | A positive number that is the maximum number of results to return.
pmdlPageSize :: Lens' ProjectsMetricDescriptorsList (Maybe Int32)
pmdlPageSize
  = lens _pmdlPageSize (\ s a -> s{_pmdlPageSize = a})
      . mapping _Coerce

-- | JSONP
pmdlCallback :: Lens' ProjectsMetricDescriptorsList (Maybe Text)
pmdlCallback
  = lens _pmdlCallback (\ s a -> s{_pmdlCallback = a})

instance GoogleRequest ProjectsMetricDescriptorsList
         where
        type Rs ProjectsMetricDescriptorsList =
             ListMetricDescriptorsResponse
        type Scopes ProjectsMetricDescriptorsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read",
               "https://www.googleapis.com/auth/monitoring.write"]
        requestClient ProjectsMetricDescriptorsList{..}
          = go _pmdlName _pmdlXgafv _pmdlUploadProtocol
              (Just _pmdlPp)
              _pmdlAccessToken
              _pmdlUploadType
              _pmdlBearerToken
              _pmdlFilter
              _pmdlPageToken
              _pmdlPageSize
              _pmdlCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsMetricDescriptorsListResource)
                      mempty
