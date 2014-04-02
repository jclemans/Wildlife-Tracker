#Wildlife tracker
The Forest Service is considering a proposal from a timber company to clear-cut an old-growth forest of virgin Douglas fir just outside of Portland. Before they give the go-ahead, they need to do an environmental impact study. They've asked you and your pair to build an app so that the rangers can report wildlife sightings.

DONE Start out by letting users CRUD/L (create, read, update, destroy, list) species.
DONE Next, allow them to input a sighting of an animal, along with the date, latitude, and longitude. (Hint: a species has many sightings.) Add CRUD functionality for these sightings.
DONE Now, the area under consideration has been divided into several regions. Build out CRUD/L functionality for regions, and when a user reports a sighting, have them choose the region from a drop-down menu. (Hint: do a web search for html drop-down mdn.)
DONE Bonus: let users run reports to list all the sightings during a given time period.
Now, your controller action will need to look something like this:

class SightingsController < ApplicationController
  def index
    @sightings = Sightings.between(params[sightings])
    render('sightings/index.html.erb')
  end`
end
This code may not be exactly correct... but should get you on the right path.

DONE Finally, let users narrow their reports down to a particular region.
