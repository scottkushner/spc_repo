module DropboxApi::Metadata
  # Example of a serialized {PhotoMetadata} object:
  #
  # ```json
  # {
  #   ".tag": "photo",
  #   "dimensions": {
  #     "height": 1500,
  #     "width": 1500
  #   },
  #   "location": {
  #     "latitude": 10.123456,
  #     "longitude": 5.123456
  #   }
  #   "time_taken": "2016-09-04T17:00:27Z"
  # }
  # ```
  class PhotoMetadata < Base
    field :dimensions, DropboxApi::Metadata::Dimensions, :optional
    field :location, DropboxApi::Metadata::Location, :optional
    field :time_taken, Time, :optional
  end
end
